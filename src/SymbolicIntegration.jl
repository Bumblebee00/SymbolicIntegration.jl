module SymbolicIntegration

using Symbolics
using SymbolicUtils.Rewriters

@syms ∫(x,y)

export integrate, reload_rules #TODO reload rules i just for debug

include("rules_loader.jl")
include("rules_utility_functions.jl")
include("integration.jl")

end
