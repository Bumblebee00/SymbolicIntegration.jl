# This function splits a string `s` by `delimiter`, ignoring delimiters
# that are inside brackets (either `[]` or `()`). It returns an array of
# parts of the string that are outside of brackets.
# Delimiter must be a single character.
# Example:
# julia> split_outside_brackets("foo(1,2,3), dog, foo2(4,5,hellohello)", ',')
# 3-element Vector{String}:
#  "foo(1,2,3)"
#  "dog"
#  "foo2(4,5,hellohello)"
function split_outside_brackets(s, delimiter)
    parts = String[]
    bracket_level = 0
    last_pos = 1

    for (i, c) in enumerate(s)
        if c in "[("
            bracket_level += 1
        elseif c in "])"
            bracket_level -= 1
        elseif c == delimiter && bracket_level == 0
            push!(parts, strip(s[last_pos:i-1]))
            last_pos = i + 1
        end
    end
    push!(parts, strip(s[last_pos:end]))
    return parts
end

# In julia string indexing is byte-based, not character-based.
# This function converts to byte index to character index.
# Example:
# str_to_chr_index("ab∫ba", 6) returns 4 because sizeof(∫) is 3
str_to_chr_index(string, index) = length(string[1:index])

# This function finds the closing bracket for a given start_pattern in a
# string, no matter how many nested brakets there are.
# Note, start_pattern must not contain closing brakets
# Example:
# julia> find_closing_braket("1+Log[x]+3*Subst[Int[1/Sqrt[b*c], x], x, Sqrt[a + b*x]+Log[x]]+44+Log[x]", "Subst[Int[", "[]")
# "Subst[Int[1/Sqrt[b*c], x], x, Sqrt[a + b*x]+Log[x]]"
function find_closing_braket(full_string, start_pattern, brakets)
    depth = count(c -> c == brakets[1], start_pattern)
    start_index = findfirst(start_pattern, full_string)
    start_index === nothing && error("Could not find '$start_pattern' in: $full_string")
    
    i = 0
    for c in full_string[start_index[end]+1:end]
        i+=1
        if c == brakets[1]
            depth += 1
        elseif c == brakets[2]
            depth -= 1
            if depth == 0
                i1 = str_to_chr_index(full_string, start_index[1]) - 1
                i2 = length(full_string) - i - i1 - length(start_pattern)
                return chop(full_string, head=i1, tail=i2)
            end
        end
    end
    println("Could not find closing bracket for '$start_pattern' in: $(full_string)")
    return -1
end

# Replaces functions with [] passed in `from`, to functions with () passed in
# `to`, no matter how many nested brakets there are.
# smart_replace("ArcTan[Rt[b, 2]*x/Rt[a, 2]] + Log[x]", "ArcTan", "atan")
# = "atan(Rt[b, 2]*x/Rt[a, 2]) + Log[x]"
function smart_replace(str, from, to, n_args)
    verbose = false#from=="Inttt"
    if isempty(n_args)
        n_args = -1
    elseif isa(n_args[1],Tuple)
        # ((1,2),) to (1,2)
        n_args = n_args[1]
    end
    # else n args is already a tuple

    # println("smart_replace: replacing $from with $to in $str (n_args=$n_args)")

    processed = 1
    substring_index = findfirst(from, str[processed:end])
    while substring_index !== nothing
        verbose && println("I found")
        verbose && printstyled(str[processed:end][1:substring_index[1]-1], color=:blue)
        verbose && printstyled(str[processed:end][substring_index[1]:substring_index[end]], color=:red)
        verbose && printstyled(str[processed:end][substring_index[end]+1:end], color=:blue)
        verbose && println()

        full_str = find_closing_braket(str[processed:end], from, "[]") 
        # if cannot find closing brakets
        if full_str == -1
            processed += substring_index[1] + length(from)
            substring_index = findfirst(from, str[processed:end])
            continue
        end
        # if the match in string is not followed by a '[' or is preceeded by a letter, continue
        if full_str[length(from)+1] !== '[' || processed + substring_index[1] > 2 && isletter(str[processed + substring_index[1] - 2])
            processed += substring_index[1] + length(from)
            substring_index = findfirst(from, str[processed:end])
            continue
        end

        inside = full_str[length(from)+2:end-1] # remove "Not[" and "]"
        if n_args != -1
            inside_parts = split_outside_brackets(inside, ',')
            if !(length(inside_parts) in n_args )
                error("Expected $n_args arguments in '$from', but got $(length(inside_parts)) in: $str")
            end
        end

        # replace without using the replace function
        str = str[1:substring_index[1]-2+processed] * "$to($inside)" * str[substring_index[1]+sizeof(full_str)+processed-1:end]
        processed += substring_index[1] + sizeof(to)
        substring_index = findfirst(from, str[processed:end])
        
        verbose && println("and I replaced with")
        verbose && printstyled(str*"\n";color=:red)
    end
    return str
end


# the "With" Mathematica syntax allows to write expressions like
# With[{a = Sqrt[2], b = 2}, a + b + c /; a > 0 && b < 10] /; c < 1
# so the variables a and b are definied only inside the With block.
# whenever that happens in the rules we could define a custom function
# defining custom variables, or simply substitute the variables with
# their definitions. this second option is choosen
# remember that \s* is zero or more spaces in regex
function translate_With_syntax(s)
    !occursin("With", s) && return s
    
    # move the conditions involving the with-variables to the end
    # if both conditions present
    if match(r"With\[\{(?<vardefs>.+)\},(?<body>.+?)/;(?<wconds>.+?)\]\s*/;(?<conds>.+)", s) !== nothing
        m = match(r"With\[\{(?<vardefs>.+)\},(?<body>.+?)/;(?<wconds>.+?)\]\s*/;(?<conds>.+)", s)
        s = replace(s, m.match => "With[{$(m[:vardefs])},$(m[:body])] /; $(m[:conds]) && $(m[:wconds])")
    # if only conditions with normal variables
    elseif match(r"With\[\{(?<vardefs>.+)\},(?<body>.+?)\s*\]\s*/;(?<conds>.+)\s*$", s) !== nothing
        # nothing to do here, just needs to match before the next case
    # if only conditions with with-variables
    elseif match(r"With\[\{(?<vardefs>.+)\},(?<body>.+?)/;(?<wconds>.+)\]\s*$", s) !== nothing
        m = match(r"With\[\{(?<vardefs>.+)\},(?<body>.+?)/;(?<wconds>.+)\]\s*$", s)
        count("[", m[:body]) != count("]", m[:body]) && error("error in transaltion of with module")
        s = replace(s, m.match => "With[{$(m[:vardefs])},$(m[:body])] /; $(m[:wconds])")
    end
    
    # replaces newly definied variables with their definitions
    m = match(r"With\[\{(?<vardefs>.+)\},(?<body>.+?)\s*\]\s*/;(?<conds>.+)\s*$", s)
    s = m[:body] * "/;" * m[:conds]
    for a in split_outside_brackets(m[:vardefs], ',')
        a = strip(a)
        !occursin("=", a) && continue
        var_match = match(r"^\s*(?<varname>[a-zA-Z]{1,2}\d*)\s*=\s*(?<vardef>.*)", a)
        var_match === nothing && continue
        s = replace(s, Regex("(?<!\\w)$(var_match[:varname])(?!\\w)") => var_match[:vardef])
    end

    println("with transofmed to")
    println(s)
    return s
end

# This function indents the conditions in a more readable way.
# Example: from
# !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~p), (~x)) && eq((~b)*(~c) + (~a)*(~d), 0) && eq((~n), (~m)) && ext_isinteger( (~m)) && (!eq((~m), -1) || eq((~e), 0) && (eq((~p), 1) || !(ext_isinteger((~p)))))
# to
#    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~p), (~x)) &&
#    eq((~b)*(~c) + (~a)*(~d), 0) &&
#    eq((~n), (~m)) &&
#    ext_isinteger( (~m)) &&
#    (
#        !eq((~m), -1) ||
#        eq((~e), 0) &&
#        (
#            eq((~p), 1) ||
#            !(ext_isinteger((~p)))
#        )
#    )
function pretty_indentation(conditions)
    if isempty(strip(conditions)) || length(conditions)<=2
        return conditions
    end
    
    result = conditions[1]
    depth = 1
    indent = "    "
    i = 2
    remove_next_spaces = false
    groups_depths = []
    
    while i <= length(conditions)
        if remove_next_spaces
            if conditions[i]==' '
                i+=1
                continue
            else
                remove_next_spaces=false
            end
        end
        if conditions[i] == '('
            depth += 1
        elseif conditions[i] == ')'
            depth -= 1
        end

        if conditions[i-1:i] == "&&"
            result = result * "&\n" * indent^depth
            remove_next_spaces=true
        elseif conditions[i-1:i] == "||"
            remove_next_spaces=true
            result = result * "|\n" * indent^depth
        elseif (conditions[i-1:i]==" (" || conditions[i-1:i]=="!(") && i<length(conditions) && conditions[i+1]!='~'
            # if there are more than one arguments in the parenthesis
            tmp = find_closing_braket(conditions[i-1:end], conditions[i-1:i], "()")
            if occursin("||", tmp) || occursin("&&", tmp)
                result = result * "(\n" * indent^depth
                remove_next_spaces=true
                push!(groups_depths, depth)
            else
                result *= conditions[i]
            end
        elseif conditions[i]==')' && in(depth+1, groups_depths)
            result *= "\n" * indent^depth * ")"
            pop!(groups_depths)
        else
            result *= conditions[i]
        end
        i+=1
    end
    
    return indent^depth * result
end