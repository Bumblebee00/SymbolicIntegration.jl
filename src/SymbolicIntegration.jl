module SymbolicIntegration

using Symbolics

# subst is just for when integral inside the real subst function is not solved
@syms ∫(var1,var2) subst(var1, var2, var3)

using Elliptic # TODO transform this to a pakage extension

@register_symbolic Elliptic.E(m)
@register_symbolic Elliptic.E(phi, m)
@register_symbolic Elliptic.F(phi, m)

using HypergeometricFunctions # TODO transform this to a pakage extension

@register_symbolic HypergeometricFunctions._₂F₁(a, b, c, z)

@register_symbolic appell_f1(a, b, c, d, e, z)

using Polynomials # TODO maybe implement division without this package for speed?

export integrate, reload_rules #TODO reload rules is just for debugging

include("rules_loader.jl")
include("rules_utility_functions.jl")
include("integration.jl")

end
