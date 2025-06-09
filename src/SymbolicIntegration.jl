module SymbolicIntegration

using Symbolics

export integrate

file1 = joinpath(@__DIR__, "IntegrationRules/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.1 (a+b x)^m.jl")
rules_paths = [ file1, ]

# for path in testset_paths
#     if !isfile(path)
#         error("Rule file not found: ", relpath(path))
#     end
#     
#     # include(path) ? 
# end

function integrate(integrand, integration_variable::Num)
    return integration_variable
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
