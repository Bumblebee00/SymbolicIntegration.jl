- [Usage](#usage)
- [How it works internally](#how-it-works-internally)
- [Problems](#problems)
  - [Serious](#serious)
    - [neim problem](#neim-problem)
  - [Mild](#mild)
    - [mild problem: oooomm](#mild-problem-oooomm)
  - [Minor](#minor)
- [Contributing](#contributing)
- [Testing](#testing)
  - [Testing other packages](#testing-other-packages)
    - [SymbolicNumericIntegration.jl](#symbolicnumericintegrationjl)
    - [SymPy.jl](#sympyjl)


# SymbolicIntegration

[![Build Status](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml?query=branch%3Amain)

# Usage
```
(@v1.11) pkg> activate .
  Activating project at `~/.julia/dev/SymbolicIntegration.jl`

julia> using Symbolics, SymbolicIntegration
Loaded 2669 rules from 64 files.

julia> @variables x a
2-element Vector{Num}:
 x
 a

julia> integrate(a^2)
(1//3)*(a^3)

julia> integrate(a^2, x)
(a^2)*x

julia> integrate(x/(x^2 +1) + π*exp(π*x);verbose=true)
┌-------Applied rule 9_1_0 on ∫(x / (1 + x^2) + 3.141592653589793exp(πx), x)
| ∫( +(a...), x) => sum([ ∫(f, x) for f in a ])
└-------with result: ∫(3.141592653589793exp(πx), x) + ∫(x / (1 + x^2), x)
┌-------Applied rule 1_1_2_2_1 on ∫(x / (1 + x^2), x)
| ∫(x / (a + b * x ^ 2), x) => if 
|       !(contains_var(a, b, x))
| log(a + b * x ^ 2) / (2 * b)
└-------with result: (1//2)*log(1 + x^2)
┌-------Applied rule 9_1_12 on ∫(3.141592653589793exp(πx), x)
| ∫(a * u, x) => if 
|       !(contains_var(prod(a), x))
| prod(a) * ∫(u, x)
└-------with result: 3.141592653589793∫(exp(πx), x)
┌-------Applied rule 2_3_1 on ∫(exp(πx), x)
| ∫((F ^ (c * (a + b * x))) ^ n, x) => if 
|       !(contains_var(F, a, b, c, n, x))
| (F ^ (c * (a + b * x))) ^ n / (b * c * n * log(F))
└-------with result: 0.3183098861837907(ℯ^(πx))
(1//2)*log(1 + x^2) + ℯ^(πx)
```
first argument is the expression to integrate, second argument is the variable of integration. If the variable is not specified, it will be guessed from the expression. Put verbose=true to see intermediate integration steps, and the rules used to reach them. The +c is omitted :) .

The load time of the package is quite big, it takes time to create all rules. On a macboockair m1 it does approx 750 rules/min, so ~4 min to load all the rules.

# How it works internally
This package uses a rule based approach to integrate a vast class of functions, and it's built using the rules from the Mathematica package [RUBI](https://rulebasedintegration.org/). The rules are definied using the SymbolicUtils [rule macro](https://symbolicutils.juliasymbolics.org/rewrite/#rule-based_rewriting) and are of this form:
```julia
# rule 1_1_1_1_2
@rule ∫((~x)^(~!m),(~x)) =>
    !contains_var((~m), (~x)) &&
    !eq((~m), -1) ?
(~x)^((~m) + 1)⨸((~m) + 1) : nothing
```
The rule left hand side pattern is the symbolic function `∫(var1, var2)` where first variable is the integrand and second is the integration variable. After the => there are some conditions to determine if the rules are applicable, and after the ? there is the transformation. Note that this may still contain a integral, so a walk in pre order of the tree representing the symbolic expression is done, applying rules to each node containg the integral.

The infix operator `⨸` is used to represent a custom division function, if called on integers returns a rational and if called on floats returns a float. This is done because // operator does not support floats. This specific charachter was chosen because it resembles the division symbol and because it has the same precedence as /.

Not all rules are yet translated, I am each day translating more of them. If you want to know how read the section [contributing](#contributing). If you enconunter any issues using the package, please write me or open a issue on the repo.

# Problems
## Serious
Serious problems are problems that strongly impact the correct functioning of the rule based symbolic integrator and are difficult to fix. Here are the ones i encountred so far:
### neim problem
neim stands for negative exponents in multiplications
If I define a rule with this pattern `@rule ((~!a) + (~!b)*(~x))^(~m)*((~!c) + (~!d)*(~x))^(~n)~))` it can correctly match something like `(1+2x)^2 * (3+4x)^3`. But when one of the two exponents is negative, let's say -3, this expression is represented in julia as `(1+2x)^2 / (3+4x)^3)`. Or when both are negative, the expression is represented as `1 / ( (1+2x)^2 * (3+4x)^3 )`. The matcher inside the rule instad, searches for a * as first operation, and thus doesn't recognize the expression. For this reason `(1 + 3x)^2 / (1 + 2x))`, `(x^6) / (1 + 2(x^6))` and many other expressions dont get integrated.

A workaround I implemented is this:
```
julia> ncn(expr) = SymbolicUtils.Term{Number}(^,[expr,-1])
ncn (generic function with 1 method)

julia> r = @rule (~n)/*(~d) => ~n*ncn(~d)
~n / (*)(~(~d)) => ~n * prod([ncn(el) for el = ~(~d)])

julia> r(a*b/(c*x))
a*b*(c^-1)*(x^-1)
```
creating a power with negative exponent, with `Term` and not with `^`, doesnt autosimplify it to a division with positive exponent. So the rule can be applied

## Mild
Mild problems are problems that impact the correct functioning of the rule based symbolic integrator and are medium difficulty to fix. Here are the ones I encountred so far:

- In the Mathematica package is definied the `ExpandIntegrand` funciton that expands a lot of mathematical expression (is definied in more than 360 rules of code) in strange ways. For example:
```
ExpandIntegrand[(-1 + 2 x)^2*(3 + 6 x)^(2.1), x]
4 (3 + 6 x)^2.1 - 4/3 (3 + 6 x)^3.1 + 1/9 (3 + 6 x)^4.1
```
that is not the obvious expansion of expanding the square of binomial, that is also what the SymbolicUtils function ``expand`` does
```
julia> expand((-1 + 2x)^2 * (3 + 6x)^(2.1))
(3 + 6x)^2.1 - 4x*((3 + 6x)^2.1) + 4(x^2)*((3 + 6x)^2.1)
```
now this can be a problem, but also not, because, even though ``4(x^2)*((3 + 6x)^2.1)`` is more difficult to integrate than ``1/9 (3 + 6 x)^4.1``, the system should be able to integate both. But maybe for some advanced integrals the function `ExpandIntegrand` and it's exact behaviour is needed.

- 
```
julia> r = @rule (~a) + (~!b)*x => ~
~a + ~(!b) * x => (~)

julia> r(1+c*x)
Base.ImmutableDict{Symbol, Any} with 4 entries:
  :MATCH => 1 + c*x
  :b     => c
  :a     => 1
  :____  => nothing

julia> r(1-c*x)

```
because -c*x is represented as a three factor moltiplication between -1, c and x

- integrals with complex numers dont work very well

### mild problem: oooomm
oooomm stands for only one out of multiple matches.

one rule can have more than one match. for example `@rule ((~!a) + (~!b)*(~x))^(~m)*((~!c) + (~!d)*(~x))^(~n)~))` can match `(1+2x)^2 * (3+4x)^3` with both m=2, n=3, ... or m=3, n=2, ... . Only one match of the possible ones is returned. but a usual rule form rubi is @rule pattern => if (conditions...) result else nothing. So first the pattern is found, but then if it doesnt match the conditions the rule returns nothing. But maybe one of the other possible matches matched the condition and the rule would have been applied. Mathematica does this:
```
A[(x_^m_) (y_^n_)] := m
B[(x_^m_) (y_^n_)] := m /; EvenQ[m]

In[20]:= A[x^3 y^2]

Out[20]= 3

In[21]:= B[x^3 y^2]

Out[21]= 2

In[22]:= B[(a^3)*(b^5)]

Out[22]= B[a^3 b^5] # this means the rule is not applied
```
Note that this could be somewhat prevented putting conditions as predicates on the variables like this:
```
julia> ext_even(x::Number)=iseven(x)
ext_even (generic function with 1 method)

julia> ext_even(x)=false
ext_even (generic function with 2 methods)

julia> A = @rule (~x)^(~m) * (~y)^(~n) => (~x, ~y, ~m, ~n)
(~x) ^ ~m * (~y) ^ ~n => (~x, ~y, ~m, ~n)

julia> B = @rule (~x)^(~m::ext_even) * (~y)^(~n) => (~x, ~y, ~m, ~n)
(~x) ^ ~(m::ext_even) * (~y) ^ ~n => (~x, ~y, ~m, ~n)

julia> A((y^3) * (x^2))
(y, x, 3, 2)

julia> A((x^3) * (y^2))
(y, x, 2, 3)

julia> B((y^3) * (x^2))
(x, y, 2, 3)

julia> B((x^3) * (y^2))
(y, x, 2, 3)

julia> B((y^3) * (x^5))


```
but has two drawbacks:
- in those conditions you cannot use variables matched in the expression, only the slot variable. so for example:
```
julia> C = @rule (~x)^(~m)*(~y)^(~n) => "success" where (~m)^(~n)==8
(~x) ^ ~m * (~y) ^ ~n => ("success" where (~m) ^ ~n == 8)

julia> C((y^2)*(x^3))
"success"


julia> C((x^2)*(y^3))

```
- you can put conditions on single variables but not conditions on the general rule match

#### Example in intgeration
For example the problem presents itself in the following case. The rule is
```julia
("1_1_1_1_5",
@rule ∫(((~!a) + (~!b)*(~u))^(~m),(~x)) =>
    !contains_var((~a), (~b), (~m), (~x)) &&
    linear((~u), (~x)) &&
    !eq((~u), (~x)) ?
1⨸Symbolics.coeff((~u), (~x)^ 1)*int_and_subst(((~a) + (~b)*(~x))^(~m),  (~x), (~x), (~u), "1_1_1_1_5") : nothing)
```
and this works:
```
julia> integrate((1+a*(1+x))^2,x)
((1 + a*(1 + x))^3) / (3a)
```
but doing this (now integration variable is a) doesnt:
```
julia> integrate((1+x*(1+a))^2,a)
No rule found for ∫((1 + (1 + a)*x)^2, a)
```
This is because in this new expression the matches are
- ~u matches x
- ~!b matches 1+a
so the rule returns but then the condition `linear(x, a)` fails

#### another example
`1/(sqrt(1+200x)*sqrt(2-x))` shoud integrate with the rule
```
("1_1_1_2_23",
@rule ∫(1/(sqrt((~!a) + (~!b)*(~x))*sqrt((~!c) + (~!d)*(~x))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~x)) &&
    gt((~b)*(~c) - (~a)*(~d), 0) &&
    gt((~b), 0) ?
2⨸sqrt((~b))* int_and_subst(1⨸sqrt((~b)*(~c) - (~a)*(~d) + (~d)*(~x)^2), (~x), (~x), sqrt((~a) + (~b)*(~x)), "1_1_1_2_23") : nothing)
```
but the second condition is true only for `200*2 - 1*(-1) = 401 > 0` and not for `(-1)*1 - 2*200 = -401 not > 0`

## Minor
- in runtests, exp(x) is not recognized as ℯ^x. This is because integration produces a ℯ^x that doesnt get automatically transalted into exp(x) like happens in the REPL
- roots of numbers are not treated simbolically but immediatly calcolated. So instead of the beautiful `integrate(1/(sqrt(1+2x)*sqrt(3+4x))) = asinh(sqrt(2)*sqrt(1+2x))/sqrt(2)`, i have ` = 0.7071067811865475asinh(1.414213562373095sqrt(1 + 2x))`. Or instead of `integrate(2^x) = 2^x / log(2)`, i have `integrate(2^x) = 1.4426950408889634*2^x`. Or instead of `integrate((2/sqrt(π))*exp(-x^2)) = SpecialFunctions.erf(x)` I have  `integrate((2/sqrt(π))*exp(-x^2)) = 0.9999999999999999SpecialFunctions.erf(x)`
- the variable USE_GAMMA is used to choose if gamma function is used in the results or not. But right now is not configurable by the user, and if changed doesnt change the behaviour of th eintegration but a reload_rules() is needed, i dont know why.

# Contributing
In this repo there is also some software that serves the sole purpose of helping with the translation of rules from Mathematica syntax, and not for the actual package working. The important ones are:
- translator_of_rules.jl is a script that with regex and other string manipulations translates from Mathematica syntax to julia syntax
- translator_of_testset.jl is a script that translates the testsets into julia syntax (much simpler than translator_of_rules.jl)
- `reload_rules` function in rules_loader.jl. When developing the package using Revise is not enough because rules are definied with a macro. So this function reloads rules from a specific .jl file or from all files if called without arguments.

my typical workflow is:
- translate a rule file with translator_of_rules.jl. In the resulting file there could be some problems:
- - maybe a Mathematica function that i never encountered before and therefore not included in the translation script (and in rules_utility_functions.jl)
- - maybe a Mathematica syntax that I never encountered before and not included in the translation script
- - others, see [Common probelms when translating rules](#common-probelms-when-translating-rules)
- If the problem is quite common in other rules: implement in the translation script and transalte the rule again, otherwise fix it manually in the .jl file

## Common probelms when translating rules
### Funciton not translated
If you encounter a normal function that is not translated by the script, it will stay untranslated, with square brakets, like this:
```
sqrt(Sign[(~b)]*sin((~e) + (~f)*(~x)))⨸sqrt((~d)*sin((~e) + (~f)*(~x)))* ∫(1⨸(sqrt((~a) + (~b)*sin((~e) + (~f)*(~x)))*sqrt(Sign[(~b)]*sin((~e) + (~f)*(~x)))), (~x)) : nothing)
```
a trick to find them fast is to search the regex pattern `(?<=^[^#]).*\[` in all the file. If you find them and they are already presen in julia or you implement them in rules_utility_functions.jl, you can simply add the to the smart_replace list in the translator and translate the script again.

### Sum function translation
the `Sum[...]` function gets translated with this regex:
```
(r"Sum\[(.*?),\s*\{(.*?),(.*?),(.*?)\}\]", s"sum([\1 for \2 in (\3):(\4)])"), 
```
its quite common that the \1 is a <=2 letter variable, and so will get translated from the translator into a slot vairable, appending ~.

For example
```
Sum[Int[1/(1 - Sin[e + f*x]^2/((-1)^(4*k/n)*Rt[-a/b, n/2])), x], {k, 1, n/2}]
```
gets translated to 
```
sum([∫(1⨸(1 - sin((~e) + (~f)*(~x))^2⨸((-1)^(4*(~k)⨸(~n))*rt(-(~a)⨸(~b), (~n)⨸2))), (~x)) for (~k) in ( 1):( (~n)⨸2)]
```
while it should be
```
sum([∫(1⨸(1 - sin((~e) + (~f)*(~x))^2⨸((-1)^(4*k⨸(~n))*rt(-(~a)⨸(~b), (~n)⨸2))), (~x)) for k in ( 1):( (~n)⨸2)]),
```
so what I usually do is to change the "index of the summation" variable to a >2 letters name in the Mathematica file, like this
```
Sum[Int[1/(1 - Sin[e + f*x]^2/((-1)^(4*iii/n)*Rt[-a/b, n/2])), x], {iii, 1, n/2}]
```
so that will not be translated into slot variable.
```
sum([∫(1⨸(1 - sin((~e) + (~f)*(~x))^2⨸((-1)^(4*iii⨸(~n))*rt(-(~a)⨸(~b), (~n)⨸2))), (~x)) for iii in ( 1):( (~n)⨸2)]),
```
### Module syntax translation
The `Module` Syntax is similar to the `With` syntax, but a bit different and for now is not handled by the script




# Testing

There is a test suit of ~70k integration problems. Rn they are still in mathematica syntax, and they can be translated into julia with the `testset_translator.jl` script (still experimental). Once they are all transalted, the mathematica syntax ones will be removed. I translated only some of them in julia. To run them, execute in a terminal:
```
julia --project=. test/runtests.jl
```
or in a Repl:
```
(@v1.11) pkg> activate .
  Activating project at `~/.julia/dev/SymbolicIntegration.jl`

julia> using Symbolics, SymbolicIntegration

julia> include("test/runtests.jl")

```

## Testing other packages
These test can be used to test the package, but also other packages in order to compare them.

### SymbolicNumericIntegration.jl
For example the script `test_SymbolicNumericIntegration.jl` tests the package `SymbolicNumericIntegration.jl`.

Is still experimental, there are some problems as you can read from this line taken form the output:
`∫( 1 / (x^(1//2)) )dx = 2sqrt(x) but got (2(x^0.5), 0, 0) (0.3106s)`
In fact it has not yet been tested with all the tests.

### SymPy.jl
Also the script `test_SymPy.jl` can be used to test the package `SymPy.jl`.

```
~/.julia/dev/SymbolicIntegration.jl/test (main ✗) julia test_SymPy.jl
About to test SymbolicNumericIntegration.jl with 2 test sets
Note: The results from SymbolicNumericIntegration showed are a tuple of (solution, unsolved portion, error)

Loading test data from MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl...
Testing 114 integrals...
[fail] exception during ∫( 0 )dx : MethodError(SymPyCore.integrate, (0, x), 0x0000000000006868)
[fail] exception during ∫( 1 )dx : MethodError(SymPyCore.integrate, (1, x), 0x0000000000006868)
[fail] exception during ∫( 5 )dx : MethodError(SymPyCore.integrate, (5, x), 0x0000000000006868)
[fail] exception during ∫( -2 )dx : MethodError(SymPyCore.integrate, (-2, x), 0x0000000000006868)
[fail] exception during ∫( -3//2 )dx : MethodError(SymPyCore.integrate, (-3//2, x), 0x0000000000006868)
[fail] exception during ∫( π )dx : MethodError(SymPyCore.integrate, (π, x), 0x0000000000006868)
[ ok ]∫( a )dx = a*x (0.0361s)
[ ok ]∫( 3*a )dx = 3*a*x (0.0004s)
[fail] exception during ∫( 1.070593230002168 )dx : MethodError(SymPyCore.integrate, (1.070593230002168, x), 0x0000000000006868)
[ ok ]∫( x^100 )dx = x^101/101 (0.0011s)

...many more...

================================================================================
================================================================================
================================================================================
44/163 tests failed in all testsets
Total=7.779s, Avg=0.0477s

```