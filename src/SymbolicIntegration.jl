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
@register_symbolic Elliptic.E(m) false # complete second kind
@register_symbolic Elliptic.Pi(nu, phi, m) # incomplete third kind

# changing name bc the . does no good in translation scritpt
elliptic_f(phi, m) = Elliptic.F(phi, m)
elliptic_e(m) = Elliptic.E(m)
elliptic_e(phi, m) = Elliptic.E(phi, m)
elliptic_pi(nu, phi, m) = Elliptic.Pi(nu, phi, m)
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

all_rules_paths = [
"9 Miscellaneous/9.1 Integrand simplification rules.jl"

"1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.1 (a+b x)^m.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.4 (a+b x)^m (c+d x)^n (e+f x)^p (g+h x)^q.jl"

"1 Algebraic functions/1.1 Binomial products/1.1.2 Quadratic/1.1.2.1 (a+b x^2)^p.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.2 Quadratic/1.1.2.2 (c x)^m (a+b x^2)^p.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.2 Quadratic/1.1.2.3 (a+b x^2)^p (c+d x^2)^q.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.2 Quadratic/1.1.2.4 (e x)^m (a+b x^2)^p (c+d x^2)^q.jl"
# 5, 6, 7, 8, 9

"1 Algebraic functions/1.1 Binomial products/1.1.3 General/1.1.3.1 (a+b x^n)^p.jl"
"1 Algebraic functions/1.1 Binomial products/1.1.3 General/1.1.3.2 (c x)^m (a+b x^n)^p.jl"
# 3, 4, 5, 6

"1 Algebraic functions/1.2 Trinomial products/1.2.1 Quadratic/1.2.1.1 (a+b x+c x^2)^p.jl"
"1 Algebraic functions/1.2 Trinomial products/1.2.1 Quadratic/1.2.1.2 (d+e x)^m (a+b x+c x^2)^p.jl"
"1 Algebraic functions/1.2 Trinomial products/1.2.1 Quadratic/1.2.1.3 (d+e x)^m (f+g x) (a+b x+c x^2)^p.jl" # not most updated version?
"1 Algebraic functions/1.2 Trinomial products/1.2.1 Quadratic/1.2.1.4 (d+e x)^m (f+g x)^n (a+b x+c x^2)^p.jl" # not most updated version?
# 1.2.1.5

"1 Algebraic functions/1.2 Trinomial products/1.2.2 Quartic/1.2.2.1 (a+b x^2+c x^4)^p.jl"
"1 Algebraic functions/1.2 Trinomial products/1.2.2 Quartic/1.2.2.2 (d x)^m (a+b x^2+c x^4)^p.jl"
"1 Algebraic functions/1.2 Trinomial products/1.2.2 Quartic/1.2.2.3 (d+e x^2)^q (a+b x^2+c x^4)^p.jl"
# 1.2.2.4

"1 Algebraic functions/1.2 Trinomial products/1.2.3 General/1.2.3.1 (a+b x^n+c x^(2 n))^p.jl"
# 1.2.3.2, 1.2.3.3, 1.2.3.4

# 1.1.4.1, 1.1.4.2, 1.1.4.3

# 1.2.4.1, 1.2.4.2, 1.2.4.3, 1.2.4.4

# 1.4.1, 1.4.2

# 1.1.1.7
# 1.1.1.6
"1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.5 P(x) (a+b x)^m (c+d x)^n.jl"

# 1.2 --- others

"2 Exponentials/2.1 (c+d x)^m (a+b (F^(g (e+f x)))^n)^p.jl"
"2 Exponentials/2.2 (c+d x)^m (F^(g (e+f x)))^n (a+b (F^(g (e+f x)))^n)^p.jl"
"2 Exponentials/2.3 Miscellaneous exponentials.jl"

"3 Logarithms/3.1/3.1.1 (a+b log(c x^n))^p.jl"
"3 Logarithms/3.1/3.1.2 (d x)^m (a+b log(c x^n))^p.jl"
"3 Logarithms/3.1/3.1.3 (d+e x^r)^q (a+b log(c x^n))^p.jl"
"3 Logarithms/3.1/3.1.4 (f x)^m (d+e x^r)^q (a+b log(c x^n))^p.jl"
"3 Logarithms/3.1/3.1.5 u (a+b log(c x^n))^p.jl"
"3 Logarithms/3.2/3.2.1 (f+g x)^m (A+B log(e ((a+b x) over (c+d x))^n))^p.jl"
"3 Logarithms/3.2/3.2.2 (f+g x)^m (h+i x)^q (A+B log(e ((a+b x) over (c+d x))^n))^p.jl"
"3 Logarithms/3.2/3.2.3 u log(e (f (a+b x)^p (c+d x)^q)^r)^s.jl"
"3 Logarithms/3.3 u (a+b log(c (d+e x)^n))^p.jl"
"3 Logarithms/3.4 u (a+b log(c (d+e x^m)^n))^p.jl"
"3 Logarithms/3.5 Miscellaneous logarithms.jl"

"4 Trig functions/4.1 Sine/4.1.1/4.1.1.1 (a+b sin)^n.jl"
"4 Trig functions/4.1 Sine/4.1.1/4.1.1.2 (g cos)^p (a+b sin)^m.jl"
"4 Trig functions/4.1 Sine/4.1.1/4.1.1.3 (g tan)^p (a+b sin)^m.jl"
]
load_all_rules()

end
