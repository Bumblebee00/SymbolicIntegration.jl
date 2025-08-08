module SymbolicIntegration

using Symbolics

# subst is just for when integral inside the real subst function is not solved
@syms ∫(var1,var2) subst(var1, var2, var3)

const USE_GAMMA = false # TODO make it work with revise and not just with reloading rules

@register_symbolic SymbolicUtils.expinti(x)
@register_symbolic SymbolicUtils.expint(nu, z)
@register_symbolic SymbolicUtils.gamma(x, y)

using Elliptic # TODO transform this to a pakage extension
@register_symbolic Elliptic.F(phi, m) # incomplete first kind
@register_symbolic Elliptic.E(phi, m) # incomplete second kind
@register_symbolic Elliptic.E(m) fasle # complete second kind
@register_symbolic Elliptic.Pi(nu, phi, m) # incomplete third kind

# changing name bc the . does no good in translation scritpt
elliptic_f(phi, m) = Elliptic.F(phi, m)
elliptic_e(m) = Elliptic.E(m)
elliptic_e(phi, m) = Elliptic.E(phi, m)
elliptipc_pi(nu, phi, m) = Elliptic.Pi(nu, phi, m)
elliptic_pi(nu, m) = Elliptic.Pi(nu, π/2, m)

using HypergeometricFunctions # TODO transform this to a pakage extension
hypergeometric2f1(a, b, c, z) = HypergeometricFunctions._₂F₁(Complex(a), Complex(b), Complex(c), Complex(z))
@register_symbolic hypergeometric2f1(a, b, c, z)
appell_f1(a, b, c, d, e, z) = throw("AppellF1 function is not implemented yet")
@register_symbolic appell_f1(a, b, c, d, e, z)

using PolyLog # TODO transform this to a pakage extension
@register_symbolic PolyLog.reli(n, z)




using Polynomials # TODO maybe implement division without this package for speed?




include("integration.jl")
include("rules_utility_functions.jl")
include("rules_loader.jl")

export integrate, reload_rules

const rules = SymbolicUtils.Rule[]
const identifiers = String[]

load_all_rules()

end
