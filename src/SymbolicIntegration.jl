module SymbolicIntegration

using Symbolics
using SymbolicUtils.Rewriters

@syms ∫(x,y)

export integrate

include("rules_loader.jl")
include("rules_utility_functions.jl")
include("integration.jl")

end
