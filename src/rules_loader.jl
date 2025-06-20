
# Function to recursively find all .jl files in a directory
function find_rule_files(dir)
    files = String[]
    for (root, dirs, filenames) in walkdir(dir)
        for filename in filenames
            if endswith(filename, ".jl")
                push!(files, joinpath(root, filename))
            end
        end
    end
    return files
end

# Load all rules from the IntegrationRules directory
function load_all_rules()
    # rules_paths = find_rules_files(joinpath(@__DIR__, "IntegrationRules")) TODO
    file1 = joinpath(@__DIR__, "IntegrationRules/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.1 (a+b x)^m.jl")
    file2 = joinpath(@__DIR__, "IntegrationRules/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl")
    file3 = joinpath(@__DIR__, "IntegrationRules/9 Miscellaneous/9.1 Integrand simplification rules.jl")
    rules_paths = [ file3, file1, file2]

    all_rules = []
    for file in rules_paths
        include(file)
        append!(all_rules, file_rules)
    end
    
    return all_rules
end

# Load all rules at module initialization
rules = load_all_rules() # TODO make const when rerloading rules at will for debug will no more be needed
# TODO add a way to display the rule identifier (like 1_1_1_2_3) and not only the index

# TODO just for debug, remove later
function reload_rules(;verbose = false)
    global rules
    rules = load_all_rules()
    println("Rules reloaded. Total rules: ", length(rules))
    if verbose
        println("Here they are in order:")
        for (i, rule) in enumerate(rules)
            println("============ Rule $i: ")
            println(rule)
        end
    end
end