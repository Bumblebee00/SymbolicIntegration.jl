module SymbolicIntegration

using Symbolics
using SymbolicUtils.Rewriters

@syms ∫(var1,var2)

export integrate, reload_rules #TODO reload rules i just for debug

include("rules_loader.jl")
include("rules_utility_functions.jl")
include("integration.jl")

end
