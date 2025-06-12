module SymbolicIntegration

using Symbolics
using SymbolicUtils.Rewriters

@syms ∫(x,y)

export integrate

include("rules_loader.jl")
include("integration.jl")

end
