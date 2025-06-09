module SymbolicIntegration

using Symbolics
using SymbolicUtils.Rewriters

@syms ∫(x,y)

export integrate

const DEBUGINFO=true

function contains_int_var(var,node)
    if node === var
        return true
    end
    
    # of the node has arguments
    if SymbolicUtils.istree(node)
        for arg in SymbolicUtils.arguments(node)
            if contains_int_var(var,arg)
                return true
            end
        end
    end
    return false
end

function contains_int_var(var,args...)
    return all(contains_int_var(var,arg) for arg in args)
end

# Load rules from files
# file1 = joinpath(@__DIR__, "IntegrationRules/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.1 (a+b x)^m.jl")
# rules_paths = [ file1, ]
# ...
rule0_4 = @rule ∫(+(~~a),~v) => sum(map(x-> ∫(x,~v), ~a))
rule0_12 = @rule ∫(~a * ~b,~v) => !contains_int_var(~v,~a) ? ~a*∫(~b,~v) : nothing
rule0_8 = @rule ∫(~a, ~v) => !contains_int_var(~v,~a) ? (~a)*(~v) : nothing
rule1_1_1_1_1_1 = @rule ∫(1/(~v),~v) => log(~v)
rule1_1_1_1_1_2 = @rule ∫((~v)^(~!m),~v) => !contains_int_var(~v,~m) ? (1//((~m)+1)) * (~v)^((~m)+1) : nothing

rules = [
    rule0_4,
    rule0_12,
    rule0_8,
    rule1_1_1_1_1_1,
    rule1_1_1_1_1_2,
]

function apply_rule(integrand)
    result = nothing
    for rule in rules
        result = rule(integrand)
        if result !== nothing
            DEBUGINFO && println("Applied rule: ", rule, " with result: ", result)
            return result
        end
    end

    DEBUGINFO && println("No rule found for ", integrand)
    return integrand
end

function shouldtransform(node)
    DEBUGINFO && println("Checking node ", node, "...")
    if !SymbolicUtils.istree(node)
        DEBUGINFO && println("    is not a tree, skipping branch.")
        return false
    end

    cond = SymbolicUtils.operation(node) === ∫
    DEBUGINFO && println("    is a tree ", cond ? "and is a ∫" : "but not a ∫, skipping branch.")
    return cond
end

# Prewalk from SymbolicUtils.Rewriters is used, to explore the tree of the 
# integrand symbolic expression. when a node is a ∫, the rules are applied to
# the node (if applicable) and the result is substituted in the tree. 
# Exploring in Preorder allows to re-apply the rules to the result of the
# previous rules, in case a rule transforms the integral in another integral
# (for example linearity rules). 
function integrate(integrand, int_var)
    conditional = IfElse(shouldtransform, apply_rule, Empty())
    return Prewalk(conditional)(∫(integrand,int_var))
end

# If no integration variable provided
function integrate(integrand)
    vars = Symbolics.get_variables(integrand)
    if length(vars) > 1
        error("Multiple symbolic variables detect. Please pass the integration variable to the `integrate` function as second argument.")
    elseif length(vars) == 1
        integration_variable = vars[1]
    else
        @variables x
        integration_variable = x
    end

    integrate(integrand, integration_variable)
end

end
