module SymbolicIntegration

using Symbolics
using SymbolicUtils.Rewriters

@syms ∫(var1,var2) subst(var1, var2, var3)
# subst is just for when integral inside the real subst function is not solved

export integrate, reload_rules #TODO reload rules is just for debugging

include("rules_loader.jl")
include("rules_utility_functions.jl")
include("integration.jl")

end
