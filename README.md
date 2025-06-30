# SymbolicIntegration

[![Build Status](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml?query=branch%3Amain)

# Usage
```
(@v1.11) pkg> activate .
  Activating project at `~/.julia/dev/SymbolicIntegration.jl`

julia> using Symbolics, SymbolicIntegration
Precompiling SymbolicIntegration...
  1 dependency successfully precompiled in 11 seconds. 150 already precompiled.

julia> @variables x a
2-element Vector{Num}:
 x
 a

julia> integrate(a^2)
(1//3)*(a^3)

julia> integrate(a^2, x)
(a^2)*x

julia> integrate(x^2 + 1/x;verbose=true)
Checking ∫(1 / x + x^2, x)...
┌---Applied rule 9_1_0 on ∫(1 / x + x^2, x)
| ∫(+(~(~a)), ~x) => sum(map((f->begin
|                     #= /Users/mmm/.julia/dev/SymbolicIntegration.jl/src/IntegrationRules/9 Miscellaneous/9.1 Integrand simplification rules.jl:6 =#
|                     ∫(f, ~x)
|                 end), ~a))
└---with result: ∫(x^2, x) + ∫(1 / x, x)
Checking ∫(x^2, x) + ∫(1 / x, x)...
Checking ∫(x^2, x)...
┌---Applied rule 1_1_1_1_2 on ∫(x^2, x)
| ∫((~x) ^ ~(!m), ~x) => if !(contains_var(~x, ~m)) && !(eqQ(~m, -1))
|         (~x) ^ (~m + 1) ⨸ (~m + 1)
|     else
|         nothing
|     end
└---with result: (1//3)*(x^3)
Checking (1//3)*(x^3)...
Checking 1//3...
Checking x^3...
Checking x...
Checking 3...
Checking ∫(1 / x, x)...
┌---Applied rule 1_1_1_1_1 on ∫(1 / x, x)
| ∫(1 / ~x, ~x) => log(~x)
└---with result: log(x)
Checking log(x)...
Checking x...
log(x) + (1//3)*(x^3)
```
first argument is the expression to integrate, second argument is the variable of integration. If the variable is not specified, it will be guessed from the expression. Put verbose=true to see intermediate integration steps, and the rules used to reach them.

In this development phase there is also a function `reload_rules` (to be called optionally with verbose=true) to reload the rules, because using Revise is not enough.

# How it works internally
This package uses a rule based approach to integrate a vast class of functions, and it's built using the rules from the Mathematica [RUBI package](https://rulebasedintegration.org/). The rules are definied using the SymbolicUtils [rule macro](https://symbolicutils.juliasymbolics.org/rewrite/#rule-based_rewriting) and are of this form:
```julia
# rule 1_1_1_1_2
@rule ∫((~x)^(~!m),(~x)) => !contains_var((~x), (~m)) && !eqQ((~m), -1) ? (~x)^((~m) + 1)⨸((~m) + 1) : nothing
```
The rule left hand side pattern is the symbolic function `∫(var1, var2)` where first variable is the integrand and second is the integration variable. After the => there are some conditions to determine if the rules are applicable, and after the ? there is the transformation. Note that this may still contain a integral, so a walk in pre order of the tree representing the symbolic expression is done, applying rules to each node containg the integral.

The infix operator `⨸` is used to represent a custom division function, if called on integers returns a rational and if called on floats returns a float. This is done because // operator does not support floats. This specific charachter was chosen because it resembles the division symbol and because it has the same precedence as /.

For now there are just a few rules, I am each day translating more of them. If you enconunter any issues using the package, please write me or open a issue on the repo.

# Problems
## Serious
Serious problems are problems that strongly impact the correct functioning of the rule based symbolic integrator and are difficult to fix. Here are the ones i encountred so far:
- pattern matching with negative powers. If I define a rule with this pattern `@rule ((~!a) + (~!b)*(~x))^(~m)*((~!c) + (~!d)*(~x))^(~n)~))` it can correctly match something like `(1+2x)^2 * (3+4x)^3`. But when one of the two exponents is negative, let's say -3, this expression is represented in julia as `(1+2x)^2 / (3+4x)^3)`. Or when both are negative, the expression is represented as `1 / ( (1+2x)^2 * (3+4x)^3 )`. The matcher inside the rule instad, searches for a * as first operation, and thus doesn't recognize the expression.
- Number of rules. there are a lot of rules and translating them is really slow

## Mild
Mild problems are problems that impact the correct functioning of the rule based symbolic integrator and are medium difficulty to fix. Here are the ones I encountred so far:
- some rules have the integral inside a function call (like substitute) with integral to be executed before the function call.
- one rule can have more than one match. for example `@rule ((~!a) + (~!b)*(~x))^(~m)*((~!c) + (~!d)*(~x))^(~n)~))` can match `(1+2x)^2 * (3+4x)^3` with both m=2, n=3, ... or m=3, n=2, ... . Only one match of the possible ones is returned. but a usual rule form rubi is @rule pattern => if (conditions...) result else nothing. So first the pattern is found, but then if it doesnt match the conditions the rule returns nothing. But maybe one of the other possible matches matched the condition and the rule would have been applied. Mathematica does this:
```
A[(x_^m_) (y_^n_)] := m
B[(x_^m_) (y_^n_)] := m /; EvenQ[m]

In[20]:= A[x^3 y^2]

Out[20]= 3

In[21]:= B[x^3 y^2]

Out[21]= 2
```
i have not yet found a case in which this problem causes a integration to fail, therfore i put it here in mild section

## Minor
- in runtests, exp(x) is not recognized as ℯ^x. This is because integration produces a ℯ^x that doesnt get automatically transalted into exp(x) like happens in the REPL


# Testing

There is a test suit of ~70k integration problems. Rn they are still in mathematica syntax, and they can be translated into julia with the `testset_translator.jl` script (still experimental). Once they are all transalted, the mathematica syntax ones will be removed. I translated only some of them in julia. To run them, execute:
```
julia --project=. test/runtests.jl
```

## Testing other packages
These test can be used to test the package, but also other packages in order to compare them.

### SymbolicNumericIntegration.jl
For example the script `test_SymbolicNumericIntegration.jl` tests the package `SymbolicNumericIntegration.jl`.

Is still experimental, there are some problems as you can read from this line taken form the output:
`∫( 1 / (x^(1//2)) )dx = 2sqrt(x) but got (2(x^0.5), 0, 0) (0.3106s)`
In fact it has not yet been tested with all the tests.

```julia
~/.julia/dev/SymbolicIntegration.jl/test (main ✗) julia test_SymbolicNumericIntegration.jl
About to test SymbolicNumericIntegration.jl with 2 test sets
Note: The results from SymbolicNumericIntegration showed are a tuple of (solution, unsolved portion, error)

Loading test data from MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl...
Testing 114 integrals...
[ ok ]∫( 0 )dx = 0 (0.2255s)
[ ok ]∫( 1 )dx = x (0.0026s)
[ ok ]∫( 5 )dx = 5x (0.0s)
[ ok ]∫( -2 )dx = -2x (0.0s)
[ ok ]∫( -3//2 )dx = (-3//2)*x (0.0284s)
[ ok ]∫( π )dx = πx (0.8814s)
[ ok ]∫( a )dx = a*x (0.3964s)
[ ok ]∫( 3a )dx = 3a*x (0.1357s)
[ ok ]∫( 1.070593230002168 )dx = 1.070593230002168x (0.0289s)
[fail]∫( x^100 )dx = (1//101)*(x^101) but got (0, x^100, Inf) (10.0667s)
[ ok ]∫( x^3 )dx = (1//4)*(x^4) (4.2479s)
[ ok ]∫( x^2 )dx = (1//3)*(x^3) (0.0508s)
[ ok ]∫( x )dx = (1//2)*(x^2) (0.1027s)
[ ok ]∫( 1 )dx = x (0.0039s)
[ ok ]∫( 1 / x )dx = log(x) (3.066s)
[ ok ]∫( 1 / (x^2) )dx = -(1 / x) (0.6914s)
[ ok ]∫( 1 / (x^3) )dx = -(1 / (2(x^2))) (0.2102s)
[ ok ]∫( 1 / (x^4) )dx = -(1 / (3(x^3))) (0.0342s)
[fail]∫( 1 / (x^100) )dx = -1 / (99(x^99)) but got (0, (1 / x)^100, Inf) (1.7766s)
[ ok ]∫( x^(5//2) )dx = (2//7)*(x^(7//2)) (1.4269s)
[ ok ]∫( x^(3//2) )dx = (2//5)*(x^(5//2)) (0.1863s)
[ ok ]∫( x^(1//2) )dx = (2//3)*(x^(3//2)) (0.0251s)
[fail]∫( 1 / (x^(1//2)) )dx = 2sqrt(x) but got (2(x^0.5), 0, 0) (0.3144s)
[fail]∫( 1 / (x^(3//2)) )dx = -2 / sqrt(x) but got (-2(x^0.5)*((1 / (x^0.5))^2), 0, 1.1102230246251565e-16) (0.4622s)
[ ok ]∫( 1 / (x^(5//2)) )dx = -2 / (3(x^(3//2))) (0.2665s)
[fail]∫( x^(5//3) )dx = (3//8)*(x^(8//3)) but got ((3//8)*(x^2.6666666666666665), 0, 7.850462293418876e-16) (0.3261s)
[fail]∫( x^(4//3) )dx = (3//7)*(x^(7//3)) but got ((3//7)*(x^2.3333333333333335), 0, 8.326672684688674e-17) (0.0133s)
[fail]∫( x^(2//3) )dx = (3//5)*(x^(5//3)) but got ((3//5)*(x^1.6666666666666665), 0, 2.220446049250313e-16) (0.0123s)
[fail]∫( x^(1//3) )dx = (3//4)*(x^(4//3)) but got ((3//4)*(x^1.3333333333333335), 0, 4.47545209131181e-16) (0.0097s)
[fail]∫( 1 / (x^(1//3)) )dx = (3//2)*(x^(2//3)) but got ((3//2)*(x^0.6666666666666667), 0, 2.0014830212433605e-16) (0.0134s)
[fail]∫( 1 / (x^(2//3)) )dx = 3(x^(1//3)) but got (3(x^0.3333333333333334), 0, 1.1102230246251565e-16) (0.1298s)
[ ok ]∫( 1 / (x^(4//3)) )dx = -(3 / (x^(1//3))) (0.0397s)
[fail]∫( 1 / (x^(5//3)) )dx = -(3 / (2(x^(2//3)))) but got ((-3//2)*(x^0.6666666666666667)*((1 / (x^0.3333333333333333))^4), 0, 2.220446049250313e-16) (0.0262s)
[ Info: The input expression has constant parameters: [n], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([n]) to numerical values.
[fail]∫( x^n )dx = (x^(1 + n)) / (1 + n) but got (0, x^n, Inf) (1.4819s)
[ Info: The input expression has constant parameters: [b, n], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([b, n]) to numerical values.
[fail]∫( (b*x)^n )dx = ((b*x)^(1 + n)) / (b*(1 + n)) but got (0, (b*x)^n, Inf) (0.5258s)
[ Info: The input expression has constant parameters: [d, e, c, a], forcing `symbolic = true`
[ ok ]∫( 1 / (sqrt(-a) + (c + d*x)*e) )dx = log(sqrt(-a) + c*e + d*e*x) / (d*e) (2.8492s)
[ Info: The input expression has constant parameters: [a, d, b, c], forcing `symbolic = true`
[fail]∫( (c + (a + b*x)*d)^(5//2) )dx = (2((c + (a + b*x)*d)^(7//2))) / (7b*d) but got ((2((c + a*d + b*d*x)^3.5)) / (7b*d), 0, 0) (1.6274s)
[ Info: The input expression has constant parameters: [a, d, b, c], forcing `symbolic = true`
[fail]∫( (c + (a + b*x)*d)^(3//2) )dx = (2((c + (a + b*x)*d)^(5//2))) / (5b*d) but got ((2((c + a*d + b*d*x)^(5//2))) / (5b*d), 0, 0) (0.6952s)
[ Info: The input expression has constant parameters: [a, d, b, c], forcing `symbolic = true`
[fail]∫( (c + (a + b*x)*d)^(1//2) )dx = (2((c + (a + b*x)*d)^(3//2))) / (3b*d) but got ((2((c + a*d + b*d*x)^1.5)) / (3b*d), 0, 0) (0.3196s)
[ Info: The input expression has constant parameters: [a, d, b, c], forcing `symbolic = true`
[fail]∫( 1 / ((c + (a + b*x)*d)^(1//2)) )dx = (2sqrt(c + (a + b*x)*d)) / (b*d) but got ((2((c + a*d + b*d*x)^(1//2))) / (b*d), 0, 0) (0.1798s)
[ Info: The input expression has constant parameters: [a, d, b, c], forcing `symbolic = true`
[fail]∫( 1 / ((c + (a + b*x)*d)^(3//2)) )dx = -(2 / (b*d*sqrt(c + (a + b*x)*d))) but got (0.5428435525891955 / (-0.27142177629459774((c + a*d + b*d*x)^(1//2))*b*d), 0, 0) (1.385s)
[ Info: The input expression has constant parameters: [a, d, b, c], forcing `symbolic = true`
[fail]∫( 1 / ((c + (a + b*x)*d)^(5//2)) )dx = -(2 / (3b*((c + (a + b*x)*d)^(3//2))*d)) but got (-2 / (3b*((c + a*d + b*d*x)^1.5)*d), 0, 0) (0.9517s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( (a + b*x)*(x^3) )dx = (1//4)*a*(x^4) + (1//5)*b*(x^5) (0.6386s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( (a + b*x)*(x^2) )dx = (1//3)*a*(x^3) + (1//4)*b*(x^4) (0.0505s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( (a + b*x)*x )dx = (1//2)*a*(x^2) + (1//3)*b*(x^3) (0.109s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( a + b*x )dx = a*x + (1//2)*b*(x^2) (0.1652s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( (a + b*x) / x )dx = a*log(x) + b*x (1.2048s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( (a + b*x) / (x^2) )dx = (-a) / x + b*log(x) (0.7547s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[fail]∫( (a + b*x) / (x^3) )dx = -(((a + b*x)^2) / (2a*(x^2))) but got ((-b) / x - (1//2)*a*((1 / x)^2), 0, 0) (0.6745s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( (a + b*x) / (x^4) )dx = (-b) / (2(x^2)) + (-a) / (3(x^3)) (0.4128s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( (a + b*x) / (x^5) )dx = (-a) / (4(x^4)) + (-b) / (3(x^3)) (0.4647s)
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^2)*(x^3) )dx = (1//4)*(a^2)*(x^4) + (2//5)*a*b*(x^5) + (1//6)*(b^2)*(x^6) (0.0248s)
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^2)*(x^2) )dx = (1//3)*(a^2)*(x^3) + (1//2)*a*b*(x^4) + (1//5)*(b^2)*(x^5) (0.0156s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^2)*x )dx = (1//2)*(a^2)*(x^2) + (2//3)*a*b*(x^3) + (1//4)*(b^2)*(x^4) (0.012s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[fail]∫( (a + b*x)^2 )dx = ((a + b*x)^3) / (3b) but got ((a^2)*x + a*b*(x^2) + (1//3)*(b^2)*(x^3), 0, 0) (0.0984s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / x )dx = (a^2)*log(x) + 2a*b*x + (1//2)*(b^2)*(x^2) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / x, Inf) (1.3251s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^2) )dx = (-(a^2)) / x + 2a*b*log(x) + (b^2)*x but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^2), Inf) (1.0184s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^3) )dx = (-(a^2)) / (2(x^2)) + (-2a*b) / x + (b^2)*log(x) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^3), Inf) (0.9761s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^4) )dx = -(((a + b*x)^3) / (3a*(x^3))) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^4), Inf) (80.9175s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^5) )dx = (-2a*b) / (3(x^3)) + (-(b^2)) / (2(x^2)) + (-(a^2)) / (4(x^4)) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^5), Inf) (1.0819s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^6) )dx = (-a*b) / (2(x^4)) + (-(a^2)) / (5(x^5)) + (-(b^2)) / (3(x^3)) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^6), Inf) (4.7458s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^7) )dx = (-(b^2)) / (4(x^4)) + (-(a^2)) / (6(x^6)) + (-2a*b) / (5(x^5)) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^7), Inf) (1.06s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^2) / (x^8) )dx = (-(a^2)) / (7(x^7)) + (-(b^2)) / (5(x^5)) + (-a*b) / (3(x^6)) but got (0, (a^2 + 2a*b*x + (b^2)*(x^2)) / (x^8), Inf) (1.0692s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^3)*(x^4) )dx = (1//5)*(a^3)*(x^5) + (1//2)*(a^2)*b*(x^6) + (3//7)*a*(b^2)*(x^7) + (1//8)*(b^3)*(x^8) (0.0462s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^3)*(x^3) )dx = (1//4)*(a^3)*(x^4) + (3//5)*(a^2)*b*(x^5) + (1//2)*a*(b^2)*(x^6) + (1//7)*(b^3)*(x^7) (0.027s)
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^3)*(x^2) )dx = (1//3)*(a^3)*(x^3) + (3//4)*(a^2)*b*(x^4) + (3//5)*a*(b^2)*(x^5) + (1//6)*(b^3)*(x^6) (0.0176s)
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[fail]∫( ((a + b*x)^3)*x )dx = (-a*((a + b*x)^4)) / (4(b^2)) + ((a + b*x)^5) / (5(b^2)) but got ((1//2)*(a^3)*(x^2) + (a^2)*b*(x^3) + (3//4)*a*(b^2)*(x^4) + (1//5)*(b^3)*(x^5), 0, 0) (0.0231s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[fail]∫( (a + b*x)^3 )dx = ((a + b*x)^4) / (4b) but got ((a^3)*x + (3//2)*(a^2)*b*(x^2) + a*(b^2)*(x^3) + (1//4)*(b^3)*(x^4), 0, 0) (0.0198s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / x )dx = (a^3)*log(x) + 3(a^2)*b*x + (3//2)*a*(b^2)*(x^2) + (1//3)*(b^3)*(x^3) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / x, Inf) (1.0777s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^2) )dx = (-(a^3)) / x + 3(a^2)*b*log(x) + 3a*(b^2)*x + (1//2)*(b^3)*(x^2) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^2), Inf) (1.4599s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^3) )dx = (-(a^3)) / (2(x^2)) + (-3(a^2)*b) / x + 3a*(b^2)*log(x) + (b^3)*x but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^3), Inf) (1.6442s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^4) )dx = (-3(a^2)*b) / (2(x^2)) + (-(a^3)) / (3(x^3)) + (-3a*(b^2)) / x + (b^3)*log(x) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^4), Inf) (1.4681s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^5) )dx = -(((a + b*x)^4) / (4a*(x^4))) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^5), Inf) (1.6044s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^6) )dx = (b*((a + b*x)^4)) / (20(a^2)*(x^4)) + (-((a + b*x)^4)) / (5a*(x^5)) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^6), Inf) (1.6151s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^7) )dx = (-3a*(b^2)) / (4(x^4)) + (-(a^3)) / (6(x^6)) + (-3(a^2)*b) / (5(x^5)) + (-(b^3)) / (3(x^3)) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^7), Inf) (1.6241s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b]) to numerical values.
[fail]∫( ((a + b*x)^3) / (x^8) )dx = (-3a*(b^2)) / (5(x^5)) + (-(a^2)*b) / (2(x^6)) + (-(a^3)) / (7(x^7)) + (-(b^3)) / (4(x^4)) but got (0, (a^3 + 3(a^2)*b*x + 3a*(b^2)*(x^2) + (b^3)*(x^3)) / (x^8), Inf) (1.6328s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^5)*(x^6) )dx = (1//7)*(a^5)*(x^7) + (5//8)*(a^4)*b*(x^8) + (10//9)*(a^3)*(b^2)*(x^9) + (a^2)*(b^3)*(x^10) + (5//11)*a*(b^4)*(x^11) + (1//12)*(b^5)*(x^12) (0.1917s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^5)*(x^5) )dx = (1//6)*(a^5)*(x^6) + (5//7)*(a^4)*b*(x^7) + (5//4)*(a^3)*(b^2)*(x^8) + (10//9)*(a^2)*(b^3)*(x^9) + (1//2)*a*(b^4)*(x^10) + (1//11)*(b^5)*(x^11) (0.0321s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ ok ]∫( ((a + b*x)^5)*(x^4) )dx = (1//5)*(a^5)*(x^5) + (5//6)*(a^4)*b*(x^6) + (10//7)*(a^3)*(b^2)*(x^7) + (5//4)*(a^2)*(b^3)*(x^8) + (5//9)*a*(b^4)*(x^9) + (1//10)*(b^5)*(x^10) (0.0318s)
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[fail]∫( ((a + b*x)^5)*(x^3) )dx = ((a + b*x)^9) / (9(b^4)) + (-(a^3)*((a + b*x)^6)) / (6(b^4)) + (3(a^2)*((a + b*x)^7)) / (7(b^4)) + (-3a*((a + b*x)^8)) / (8(b^4)) but got ((1//4)*(a^5)*(x^4) + (a^4)*b*(x^5) + (5//3)*(a^3)*(b^2)*(x^6) + (10//7)*(a^2)*(b^3)*(x^7) + (5//8)*a*(b^4)*(x^8) + (1//9)*(b^5)*(x^9), 0, 0) (0.0248s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[fail]∫( ((a + b*x)^5)*(x^2) )dx = ((a^2)*((a + b*x)^6)) / (6(b^3)) + (-2a*((a + b*x)^7)) / (7(b^3)) + ((a + b*x)^8) / (8(b^3)) but got ((1//3)*(a^5)*(x^3) + (5//4)*(a^4)*b*(x^4) + 2(a^3)*(b^2)*(x^5) + (5//3)*(a^2)*(b^3)*(x^6) + (5//7)*a*(b^4)*(x^7) + (1//8)*(b^5)*(x^8), 0, 0) (0.0358s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[fail]∫( ((a + b*x)^5)*x )dx = (-a*((a + b*x)^6)) / (6(b^2)) + ((a + b*x)^7) / (7(b^2)) but got ((1//2)*(a^5)*(x^2) + (5//3)*(a^4)*b*(x^3) + (5//2)*(a^3)*(b^2)*(x^4) + 2(a^2)*(b^3)*(x^5) + (5//6)*a*(b^4)*(x^6) + (1//7)*(b^5)*(x^7), 0, 0) (0.0277s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`
[fail]∫( (a + b*x)^5 )dx = ((a + b*x)^6) / (6b) but got ((a^5)*x + (5//2)*(a^4)*b*(x^2) + (10//3)*(a^3)*(b^2)*(x^3) + (5//2)*(a^2)*(b^3)*(x^4) + a*(b^4)*(x^5) + (1//6)*(b^5)*(x^6), 0, 0) (0.0258s)
[ Info: The input expression has constant parameters: [a, b], forcing `symbolic = true`

...
```

### SymPy.jl
Also the script `test_SymPy.jl` can be used to test the package `SymPy.jl`.

```julia
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
[ ok ]∫( x^3 )dx = x^4/4 (0.0003s)
[ ok ]∫( x^2 )dx = x^3/3 (0.0003s)
[ ok ]∫( x )dx = x^2/2 (0.0002s)
[ ok ]∫( 1 )dx = x (0.0001s)
[ ok ]∫( 1/x )dx = log(x) (0.0008s)
[ ok ]∫( x^(-2) )dx = -1/x (0.0013s)
[ ok ]∫( x^(-3) )dx = -1/(2*x^2) (0.0006s)
[ ok ]∫( x^(-4) )dx = -1/(3*x^3) (0.0007s)
[ ok ]∫( x^(-100) )dx = -1/(99*x^99) (0.0007s)
[ ok ]∫( x^(5/2) )dx = 2*x^(7/2)/7 (0.002s)
[ ok ]∫( x^(3/2) )dx = 2*x^(5/2)/5 (0.0006s)
[ ok ]∫( sqrt(x) )dx = 2*x^(3/2)/3 (0.0006s)
[ ok ]∫( 1/sqrt(x) )dx = 2*sqrt(x) (0.0005s)
[ ok ]∫( x^(-3/2) )dx = -2/sqrt(x) (0.0005s)
[ ok ]∫( x^(-5/2) )dx = -2/(3*x^(3/2)) (0.0005s)
[ ok ]∫( x^(5/3) )dx = 3*x^(8/3)/8 (0.0006s)
[ ok ]∫( x^(4/3) )dx = 3*x^(7/3)/7 (0.0007s)
[ ok ]∫( x^(2/3) )dx = 3*x^(5/3)/5 (0.0006s)
[ ok ]∫( x^(1/3) )dx = 3*x^(4/3)/4 (0.0006s)
[ ok ]∫( x^(-1/3) )dx = 3*x^(2/3)/2 (0.0005s)
[ ok ]∫( x^(-2/3) )dx = 3*x^(1/3) (0.0005s)
[ ok ]∫( x^(-4/3) )dx = -3/x^(1/3) (0.0005s)
[ ok ]∫( x^(-5/3) )dx = -3/(2*x^(2/3)) (0.0005s)
[fail]∫( x^n )dx = x^(n + 1)/(n + 1) but got Piecewise((x^(n + 1)/(n + 1), Ne(n, -1)), (log(x), True)) (0.0008s)
[fail]∫( (b*x)^n )dx = (b*x)^(n + 1)/(b*(n + 1)) but got Piecewise(((b*x)^(n + 1)/(n + 1), Ne(n, -1)), (log(b*x), True))/b (0.0016s)
[ ok ]∫( 1/(e*(c + d*x) + sqrt(-a)) )dx = log(c*e + d*e*x + sqrt(-a))/(d*e) (0.0069s)
[fail]∫( (c + d*(a + b*x))^(5/2) )dx = 2*(c + d*(a + b*x))^(7/2)/(7*b*d) but got Piecewise((c^(5/2)*x, Eq(b, 0) & Eq(d, 0)), (x*(a*d + c)^(5/2), Eq(b, 0)), (c^(5/2)*x, Eq(d, 0)), (2*a^3*d^2*sqrt(a*d + b*d*x + c)/(7*b) + 6*a^2*d^2*x*sqrt(a*d + b*d*x + c)/7 + 6*a^2*c*d*sqrt(a*d + b*d*x + c)/(7*b) + 6*a*b*d^2*x^2*sqrt(a*d + b*d*x + c)/7 + 12*a*c*d*x*sqrt(a*d + b*d*x + c)/7 + 6*a*c^2*sqrt(a*d + b*d*x + c)/(7*b) + 2*b^2*d^2*x^3*sqrt(a*d + b*d*x + c)/7 + 6*b*c*d*x^2*sqrt(a*d + b*d*x + c)/7 + 6*c^2*x*sqrt(a*d + b*d*x + c)/7 + 2*c^3*sqrt(a*d + b*d*x + c)/(7*b*d), True)) (0.8814s)
[fail]∫( (c + d*(a + b*x))^(3/2) )dx = 2*(c + d*(a + b*x))^(5/2)/(5*b*d) but got Piecewise((c^(3/2)*x, Eq(b, 0) & Eq(d, 0)), (x*(a*d + c)^(3/2), Eq(b, 0)), (c^(3/2)*x, Eq(d, 0)), (2*a^2*d*sqrt(a*d + b*d*x + c)/(5*b) + 4*a*d*x*sqrt(a*d + b*d*x + c)/5 + 4*a*c*sqrt(a*d + b*d*x + c)/(5*b) + 2*b*d*x^2*sqrt(a*d + b*d*x + c)/5 + 4*c*x*sqrt(a*d + b*d*x + c)/5 + 2*c^2*sqrt(a*d + b*d*x + c)/(5*b*d), True)) (0.1774s)
[fail]∫( sqrt(c + d*(a + b*x)) )dx = 2*(c + d*(a + b*x))^(3/2)/(3*b*d) but got Piecewise((sqrt(c)*x, Eq(b, 0) & Eq(d, 0)), (x*sqrt(a*d + c), Eq(b, 0)), (sqrt(c)*x, Eq(d, 0)), (2*a*sqrt(a*d + b*d*x + c)/(3*b) + 2*x*sqrt(a*d + b*d*x + c)/3 + 2*c*sqrt(a*d + b*d*x + c)/(3*b*d), True)) (0.0481s)
[fail]∫( 1/sqrt(c + d*(a + b*x)) )dx = 2*sqrt(c + d*(a + b*x))/(b*d) but got Piecewise((x/sqrt(a*d + c), Eq(b, 0)), (x/sqrt(c), Eq(d, 0)), (2*sqrt(c + d*(a + b*x))/(b*d), True)) (0.2246s)
[fail]∫( (c + d*(a + b*x))^(-3/2) )dx = -2/(b*d*sqrt(c + d*(a + b*x))) but got Piecewise((x/c^(3/2), Eq(b, 0) & Eq(d, 0)), (x/(a*d + c)^(3/2), Eq(b, 0)), (x/c^(3/2), Eq(d, 0)), (-2*sqrt(a*d + b*d*x + c)/(a*b*d^2 + b^2*d^2*x + b*c*d), True)) (0.1244s)
[fail]∫( (c + d*(a + b*x))^(-5/2) )dx = -2/(3*b*d*(c + d*(a + b*x))^(3/2)) but got Piecewise((x/c^(5/2), Eq(b, 0) & Eq(d, 0)), (x/(a*d + c)^(5/2), Eq(b, 0)), (x/c^(5/2), Eq(d, 0)), (-2*sqrt(a*d + b*d*x + c)/(3*a^2*b*d^3 + 6*a*b^2*d^3*x + 6*a*b*c*d^2 + 3*b^3*d^3*x^2 + 6*b^2*c*d^2*x + 3*b*c^2*d), True)) (0.3814s)
[ ok ]∫( x^3*(a + b*x) )dx = a*x^4/4 + b*x^5/5 (0.0017s)
[ ok ]∫( x^2*(a + b*x) )dx = a*x^3/3 + b*x^4/4 (0.0011s)
[ ok ]∫( x*(a + b*x) )dx = a*x^2/2 + b*x^3/3 (0.0007s)
[ ok ]∫( a + b*x )dx = a*x + b*x^2/2 (0.0004s)
[ ok ]∫( (a + b*x)/x )dx = a*log(x) + b*x (0.0093s)
[ ok ]∫( (a + b*x)/x^2 )dx = -a/x + b*log(x) (0.0132s)
[fail]∫( (a + b*x)/x^3 )dx = -(a + b*x)^2/(2*a*x^2) but got (-a - 2*b*x)/(2*x^2) (0.0158s)
[ ok ]∫( (a + b*x)/x^4 )dx = -a/(3*x^3) - b/(2*x^2) (0.0175s)
[ ok ]∫( (a + b*x)/x^5 )dx = -a/(4*x^4) - b/(3*x^3) (0.0209s)
[ ok ]∫( x^3*(a + b*x)^2 )dx = a^2*x^4/4 + 2*a*b*x^5/5 + b^2*x^6/6 (0.0012s)
[ ok ]∫( x^2*(a + b*x)^2 )dx = a^2*x^3/3 + a*b*x^4/2 + b^2*x^5/5 (0.0009s)
[ ok ]∫( x*(a + b*x)^2 )dx = a^2*x^2/2 + 2*a*b*x^3/3 + b^2*x^4/4 (0.0009s)
[fail]∫( (a + b*x)^2 )dx = (a + b*x)^3/(3*b) but got a^2*x + a*b*x^2 + b^2*x^3/3 (0.0007s)
[ ok ]∫( (a + b*x)^2/x )dx = a^2*log(x) + 2*a*b*x + b^2*x^2/2 (0.0116s)
[ ok ]∫( (a + b*x)^2/x^2 )dx = -a^2/x + 2*a*b*log(x) + b^2*x (0.0183s)
[ ok ]∫( (a + b*x)^2/x^3 )dx = -a^2/(2*x^2) - 2*a*b/x + b^2*log(x) (0.0269s)
[fail]∫( (a + b*x)^2/x^4 )dx = -(a + b*x)^3/(3*a*x^3) but got (-a^2 - 3*a*b*x - 3*b^2*x^2)/(3*x^3) (0.0285s)
[ ok ]∫( (a + b*x)^2/x^5 )dx = -a^2/(4*x^4) - 2*a*b/(3*x^3) - b^2/(2*x^2) (0.0328s)
[ ok ]∫( (a + b*x)^2/x^6 )dx = -a^2/(5*x^5) - a*b/(2*x^4) - b^2/(3*x^3) (0.0361s)
[ ok ]∫( (a + b*x)^2/x^7 )dx = -a^2/(6*x^6) - 2*a*b/(5*x^5) - b^2/(4*x^4) (0.0417s)
[ ok ]∫( (a + b*x)^2/x^8 )dx = -a^2/(7*x^7) - a*b/(3*x^6) - b^2/(5*x^5) (0.0435s)
[ ok ]∫( x^4*(a + b*x)^3 )dx = a^3*x^5/5 + a^2*b*x^6/2 + 3*a*b^2*x^7/7 + b^3*x^8/8 (0.0021s)
[ ok ]∫( x^3*(a + b*x)^3 )dx = a^3*x^4/4 + 3*a^2*b*x^5/5 + a*b^2*x^6/2 + b^3*x^7/7 (0.0013s)
[ ok ]∫( x^2*(a + b*x)^3 )dx = a^3*x^3/3 + 3*a^2*b*x^4/4 + 3*a*b^2*x^5/5 + b^3*x^6/6 (0.0012s)
[fail]∫( x*(a + b*x)^3 )dx = -a*(a + b*x)^4/(4*b^2) + (a + b*x)^5/(5*b^2) but got a^3*x^2/2 + a^2*b*x^3 + 3*a*b^2*x^4/4 + b^3*x^5/5 (0.0012s)
[fail]∫( (a + b*x)^3 )dx = (a + b*x)^4/(4*b) but got a^3*x + 3*a^2*b*x^2/2 + a*b^2*x^3 + b^3*x^4/4 (0.0008s)
[ ok ]∫( (a + b*x)^3/x )dx = a^3*log(x) + 3*a^2*b*x + 3*a*b^2*x^2/2 + b^3*x^3/3 (0.0133s)
[ ok ]∫( (a + b*x)^3/x^2 )dx = -a^3/x + 3*a^2*b*log(x) + 3*a*b^2*x + b^3*x^2/2 (0.0186s)
[ ok ]∫( (a + b*x)^3/x^3 )dx = -a^3/(2*x^2) - 3*a^2*b/x + 3*a*b^2*log(x) + b^3*x (0.0327s)
[ ok ]∫( (a + b*x)^3/x^4 )dx = -a^3/(3*x^3) - 3*a^2*b/(2*x^2) - 3*a*b^2/x + b^3*log(x) (0.042s)
[fail]∫( (a + b*x)^3/x^5 )dx = -(a + b*x)^4/(4*a*x^4) but got (-a^3 - 4*a^2*b*x - 6*a*b^2*x^2 - 4*b^3*x^3)/(4*x^4) (0.043s)
[fail]∫( (a + b*x)^3/x^6 )dx = -(a + b*x)^4/(5*a*x^5) + b*(a + b*x)^4/(20*a^2*x^4) but got (-4*a^3 - 15*a^2*b*x - 20*a*b^2*x^2 - 10*b^3*x^3)/(20*x^5) (0.0515s)
[ ok ]∫( (a + b*x)^3/x^7 )dx = -a^3/(6*x^6) - 3*a^2*b/(5*x^5) - 3*a*b^2/(4*x^4) - b^3/(3*x^3) (0.0572s)
[ ok ]∫( (a + b*x)^3/x^8 )dx = -a^3/(7*x^7) - a^2*b/(2*x^6) - 3*a*b^2/(5*x^5) - b^3/(4*x^4) (0.0666s)
[ ok ]∫( x^6*(a + b*x)^5 )dx = a^5*x^7/7 + 5*a^4*b*x^8/8 + 10*a^3*b^2*x^9/9 + a^2*b^3*x^10 + 5*a*b^4*x^11/11 + b^5*x^12/12 (0.0033s)
[ ok ]∫( x^5*(a + b*x)^5 )dx = a^5*x^6/6 + 5*a^4*b*x^7/7 + 5*a^3*b^2*x^8/4 + 10*a^2*b^3*x^9/9 + a*b^4*x^10/2 + b^5*x^11/11 (0.0028s)
[ ok ]∫( x^4*(a + b*x)^5 )dx = a^5*x^5/5 + 5*a^4*b*x^6/6 + 10*a^3*b^2*x^7/7 + 5*a^2*b^3*x^8/4 + 5*a*b^4*x^9/9 + b^5*x^10/10 (0.0018s)
[fail]∫( x^3*(a + b*x)^5 )dx = -a^3*(a + b*x)^6/(6*b^4) + 3*a^2*(a + b*x)^7/(7*b^4) - 3*a*(a + b*x)^8/(8*b^4) + (a + b*x)^9/(9*b^4) but got a^5*x^4/4 + a^4*b*x^5 + 5*a^3*b^2*x^6/3 + 10*a^2*b^3*x^7/7 + 5*a*b^4*x^8/8 + b^5*x^9/9 (0.0018s)
[fail]∫( x^2*(a + b*x)^5 )dx = a^2*(a + b*x)^6/(6*b^3) - 2*a*(a + b*x)^7/(7*b^3) + (a + b*x)^8/(8*b^3) but got a^5*x^3/3 + 5*a^4*b*x^4/4 + 2*a^3*b^2*x^5 + 5*a^2*b^3*x^6/3 + 5*a*b^4*x^7/7 + b^5*x^8/8 (0.0018s)
[fail]∫( x*(a + b*x)^5 )dx = -a*(a + b*x)^6/(6*b^2) + (a + b*x)^7/(7*b^2) but got a^5*x^2/2 + 5*a^4*b*x^3/3 + 5*a^3*b^2*x^4/2 + 2*a^2*b^3*x^5 + 5*a*b^4*x^6/6 + b^5*x^7/7 (0.0017s)
[fail]∫( (a + b*x)^5 )dx = (a + b*x)^6/(6*b) but got a^5*x + 5*a^4*b*x^2/2 + 10*a^3*b^2*x^3/3 + 5*a^2*b^3*x^4/2 + a*b^4*x^5 + b^5*x^6/6 (0.0012s)
[ ok ]∫( (a + b*x)^5/x )dx = a^5*log(x) + 5*a^4*b*x + 5*a^3*b^2*x^2 + 10*a^2*b^3*x^3/3 + 5*a*b^4*x^4/4 + b^5*x^5/5 (0.0189s)
[ ok ]∫( (a + b*x)^5/x^2 )dx = -a^5/x + 5*a^4*b*log(x) + 10*a^3*b^2*x + 5*a^2*b^3*x^2 + 5*a*b^4*x^3/3 + b^5*x^4/4 (0.023s)
[ ok ]∫( (a + b*x)^5/x^3 )dx = -a^5/(2*x^2) - 5*a^4*b/x + 10*a^3*b^2*log(x) + 10*a^2*b^3*x + 5*a*b^4*x^2/2 + b^5*x^3/3 (0.0356s)
[ ok ]∫( (a + b*x)^5/x^4 )dx = -a^5/(3*x^3) - 5*a^4*b/(2*x^2) - 10*a^3*b^2/x + 10*a^2*b^3*log(x) + 5*a*b^4*x + b^5*x^2/2 (0.0514s)
[ ok ]∫( (a + b*x)^5/x^5 )dx = -a^5/(4*x^4) - 5*a^4*b/(3*x^3) - 5*a^3*b^2/x^2 - 10*a^2*b^3/x + 5*a*b^4*log(x) + b^5*x (0.069s)
[ ok ]∫( (a + b*x)^5/x^6 )dx = -a^5/(5*x^5) - 5*a^4*b/(4*x^4) - 10*a^3*b^2/(3*x^3) - 5*a^2*b^3/x^2 - 5*a*b^4/x + b^5*log(x) (0.0876s)
[fail]∫( (a + b*x)^5/x^7 )dx = -(a + b*x)^6/(6*a*x^6) but got (-a^5 - 6*a^4*b*x - 15*a^3*b^2*x^2 - 20*a^2*b^3*x^3 - 15*a*b^4*x^4 - 6*b^5*x^5)/(6*x^6) (0.0898s)
[fail]∫( (a + b*x)^5/x^8 )dx = -(a + b*x)^6/(7*a*x^7) + b*(a + b*x)^6/(42*a^2*x^6) but got (-6*a^5 - 35*a^4*b*x - 84*a^3*b^2*x^2 - 105*a^2*b^3*x^3 - 70*a*b^4*x^4 - 21*b^5*x^5)/(42*x^7) (0.0974s)
[fail]∫( (a + b*x)^5/x^9 )dx = -(a + b*x)^6/(8*a*x^8) + b*(a + b*x)^6/(28*a^2*x^7) - b^2*(a + b*x)^6/(168*a^3*x^6) but got (-21*a^5 - 120*a^4*b*x - 280*a^3*b^2*x^2 - 336*a^2*b^3*x^3 - 210*a*b^4*x^4 - 56*b^5*x^5)/(168*x^8) (0.1035s)
[ ok ]∫( (a + b*x)^5/x^10 )dx = -a^5/(9*x^9) - 5*a^4*b/(8*x^8) - 10*a^3*b^2/(7*x^7) - 5*a^2*b^3/(3*x^6) - a*b^4/x^5 - b^5/(4*x^4) (0.1101s)
[ ok ]∫( (a + b*x)^5/x^11 )dx = -a^5/(10*x^10) - 5*a^4*b/(9*x^9) - 5*a^3*b^2/(4*x^8) - 10*a^2*b^3/(7*x^7) - 5*a*b^4/(6*x^6) - b^5/(5*x^5) (0.1166s)
[ ok ]∫( (a + b*x)^5/x^12 )dx = -a^5/(11*x^11) - a^4*b/(2*x^10) - 10*a^3*b^2/(9*x^9) - 5*a^2*b^3/(4*x^8) - 5*a*b^4/(7*x^7) - b^5/(6*x^6) (0.1289s)
[ ok ]∫( (a + b*x)^5/x^13 )dx = -a^5/(12*x^12) - 5*a^4*b/(11*x^11) - a^3*b^2/x^10 - 10*a^2*b^3/(9*x^9) - 5*a*b^4/(8*x^8) - b^5/(7*x^7) (0.1282s)
[ ok ]∫( (a + b*x)^5/x^14 )dx = -a^5/(13*x^13) - 5*a^4*b/(12*x^12) - 10*a^3*b^2/(11*x^11) - a^2*b^3/x^10 - 5*a*b^4/(9*x^9) - b^5/(8*x^8) (0.1373s)
[ ok ]∫( x^8*(a + b*x)^7 )dx = a^7*x^9/9 + 7*a^6*b*x^10/10 + 21*a^5*b^2*x^11/11 + 35*a^4*b^3*x^12/12 + 35*a^3*b^4*x^13/13 + 3*a^2*b^5*x^14/2 + 7*a*b^6*x^15/15 + b^7*x^16/16 (0.0041s)
[ ok ]∫( x^7*(a + b*x)^7 )dx = a^7*x^8/8 + 7*a^6*b*x^9/9 + 21*a^5*b^2*x^10/10 + 35*a^4*b^3*x^11/11 + 35*a^3*b^4*x^12/12 + 21*a^2*b^5*x^13/13 + a*b^6*x^14/2 + b^7*x^15/15 (0.0027s)
[ ok ]∫( x^6*(a + b*x)^7 )dx = a^7*x^7/7 + 7*a^6*b*x^8/8 + 7*a^5*b^2*x^9/3 + 7*a^4*b^3*x^10/2 + 35*a^3*b^4*x^11/11 + 7*a^2*b^5*x^12/4 + 7*a*b^6*x^13/13 + b^7*x^14/14 (0.0025s)
[fail]∫( x^5*(a + b*x)^7 )dx = -a^5*(a + b*x)^8/(8*b^6) + 5*a^4*(a + b*x)^9/(9*b^6) - a^3*(a + b*x)^10/b^6 + 10*a^2*(a + b*x)^11/(11*b^6) - 5*a*(a + b*x)^12/(12*b^6) + (a + b*x)^13/(13*b^6) but got a^7*x^6/6 + a^6*b*x^7 + 21*a^5*b^2*x^8/8 + 35*a^4*b^3*x^9/9 + 7*a^3*b^4*x^10/2 + 21*a^2*b^5*x^11/11 + 7*a*b^6*x^12/12 + b^7*x^13/13 (0.0022s)
[fail]∫( x^4*(a + b*x)^7 )dx = a^4*(a + b*x)^8/(8*b^5) - 4*a^3*(a + b*x)^9/(9*b^5) + 3*a^2*(a + b*x)^10/(5*b^5) - 4*a*(a + b*x)^11/(11*b^5) + (a + b*x)^12/(12*b^5) but got a^7*x^5/5 + 7*a^6*b*x^6/6 + 3*a^5*b^2*x^7 + 35*a^4*b^3*x^8/8 + 35*a^3*b^4*x^9/9 + 21*a^2*b^5*x^10/10 + 7*a*b^6*x^11/11 + b^7*x^12/12 (0.0022s)
[fail]∫( x^3*(a + b*x)^7 )dx = -a^3*(a + b*x)^8/(8*b^4) + a^2*(a + b*x)^9/(3*b^4) - 3*a*(a + b*x)^10/(10*b^4) + (a + b*x)^11/(11*b^4) but got a^7*x^4/4 + 7*a^6*b*x^5/5 + 7*a^5*b^2*x^6/2 + 5*a^4*b^3*x^7 + 35*a^3*b^4*x^8/8 + 7*a^2*b^5*x^9/3 + 7*a*b^6*x^10/10 + b^7*x^11/11 (0.0022s)
[fail]∫( x^2*(a + b*x)^7 )dx = a^2*(a + b*x)^8/(8*b^3) - 2*a*(a + b*x)^9/(9*b^3) + (a + b*x)^10/(10*b^3) but got a^7*x^3/3 + 7*a^6*b*x^4/4 + 21*a^5*b^2*x^5/5 + 35*a^4*b^3*x^6/6 + 5*a^3*b^4*x^7 + 21*a^2*b^5*x^8/8 + 7*a*b^6*x^9/9 + b^7*x^10/10 (0.0022s)
[fail]∫( x*(a + b*x)^7 )dx = -a*(a + b*x)^8/(8*b^2) + (a + b*x)^9/(9*b^2) but got a^7*x^2/2 + 7*a^6*b*x^3/3 + 21*a^5*b^2*x^4/4 + 7*a^4*b^3*x^5 + 35*a^3*b^4*x^6/6 + 3*a^2*b^5*x^7 + 7*a*b^6*x^8/8 + b^7*x^9/9 (0.0021s)
[fail]∫( (a + b*x)^7 )dx = (a + b*x)^8/(8*b) but got a^7*x + 7*a^6*b*x^2/2 + 7*a^5*b^2*x^3 + 35*a^4*b^3*x^4/4 + 7*a^3*b^4*x^5 + 7*a^2*b^5*x^6/2 + a*b^6*x^7 + b^7*x^8/8 (0.0017s)
[ ok ]∫( (a + b*x)^7/x )dx = a^7*log(x) + 7*a^6*b*x + 21*a^5*b^2*x^2/2 + 35*a^4*b^3*x^3/3 + 35*a^3*b^4*x^4/4 + 21*a^2*b^5*x^5/5 + 7*a*b^6*x^6/6 + b^7*x^7/7 (0.0243s)
[ ok ]∫( (a + b*x)^7/x^2 )dx = -a^7/x + 7*a^6*b*log(x) + 21*a^5*b^2*x + 35*a^4*b^3*x^2/2 + 35*a^3*b^4*x^3/3 + 21*a^2*b^5*x^4/4 + 7*a*b^6*x^5/5 + b^7*x^6/6 (0.0293s)
[ ok ]∫( (a + b*x)^7/x^3 )dx = -a^7/(2*x^2) - 7*a^6*b/x + 21*a^5*b^2*log(x) + 35*a^4*b^3*x + 35*a^3*b^4*x^2/2 + 7*a^2*b^5*x^3 + 7*a*b^6*x^4/4 + b^7*x^5/5 (0.043s)
[ ok ]∫( (a + b*x)^7/x^4 )dx = -a^7/(3*x^3) - 7*a^6*b/(2*x^2) - 21*a^5*b^2/x + 35*a^4*b^3*log(x) + 35*a^3*b^4*x + 21*a^2*b^5*x^2/2 + 7*a*b^6*x^3/3 + b^7*x^4/4 (0.0572s)
[ ok ]∫( (a + b*x)^7/x^5 )dx = -a^7/(4*x^4) - 7*a^6*b/(3*x^3) - 21*a^5*b^2/(2*x^2) - 35*a^4*b^3/x + 35*a^3*b^4*log(x) + 21*a^2*b^5*x + 7*a*b^6*x^2/2 + b^7*x^3/3 (0.0757s)
[ ok ]∫( (a + b*x)^7/x^6 )dx = -a^7/(5*x^5) - 7*a^6*b/(4*x^4) - 7*a^5*b^2/x^3 - 35*a^4*b^3/(2*x^2) - 35*a^3*b^4/x + 21*a^2*b^5*log(x) + 7*a*b^6*x + b^7*x^2/2 (0.0987s)
[ ok ]∫( (a + b*x)^7/x^7 )dx = -a^7/(6*x^6) - 7*a^6*b/(5*x^5) - 21*a^5*b^2/(4*x^4) - 35*a^4*b^3/(3*x^3) - 35*a^3*b^4/(2*x^2) - 21*a^2*b^5/x + 7*a*b^6*log(x) + b^7*x (0.174s)
[ ok ]∫( (a + b*x)^7/x^8 )dx = -a^7/(7*x^7) - 7*a^6*b/(6*x^6) - 21*a^5*b^2/(5*x^5) - 35*a^4*b^3/(4*x^4) - 35*a^3*b^4/(3*x^3) - 21*a^2*b^5/(2*x^2) - 7*a*b^6/x + b^7*log(x) (0.1432s)
28/114 tests failed in MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl
Total=4.433s, Avg=0.0389s, Min=0.0001s, Max=0.8814s



Loading test data from MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl...
Testing 49 integrals...
[fail]∫( x^2/((x - 1)^2*(x + 1)^2) )dx = x/(2 - 2*x^2) - atanh(x)/2 but got -x/(2*x^2 - 2) + log(x - 1)/4 - log(x + 1)/4 (0.0156s)
[ ok ]∫( x^2*(a + b*x)*(a*c - b*c*x)^3 )dx = a^4*c^3*x^3/3 - a^3*b*c^3*x^4/2 + a*b^3*c^3*x^6/3 - b^4*c^3*x^7/7 (0.0032s)
[ ok ]∫( x*(a + b*x)*(a*c - b*c*x)^3 )dx = a^4*c^3*x^2/2 - 2*a^3*b*c^3*x^3/3 + 2*a*b^3*c^3*x^5/5 - b^4*c^3*x^6/6 (0.0016s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^3 )dx = -a*c^3*(a - b*x)^4/(2*b) + c^3*(a - b*x)^5/(5*b) but got a^4*c^3*x - a^3*b*c^3*x^2 + a*b^3*c^3*x^4/2 - b^4*c^3*x^5/5 (0.0031s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x )dx = a^4*c^3*log(x) - 2*a^3*b*c^3*x + 2*a*b^3*c^3*x^3/3 - b^4*c^3*x^4/4 (0.0194s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x^2 )dx = -a^4*c^3/x - 2*a^3*b*c^3*log(x) + a*b^3*c^3*x^2 - b^4*c^3*x^3/3 (0.0242s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^3/x^3 )dx = -c^3*(a - b*x)^4/(2*x^2) but got 2*a*b^3*c^3*x - b^4*c^3*x^2/2 - (a^4*c^3 - 4*a^3*b*c^3*x)/(2*x^2) (0.0268s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x^4 )dx = -a^4*c^3/(3*x^3) + a^3*b*c^3/x^2 + 2*a*b^3*c^3*log(x) - b^4*c^3*x (0.0442s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x^5 )dx = -a^4*c^3/(4*x^4) + 2*a^3*b*c^3/(3*x^3) - 2*a*b^3*c^3/x - b^4*c^3*log(x) (0.0605s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x^6 )dx = -a^4*c^3/(5*x^5) + a^3*b*c^3/(2*x^4) - a*b^3*c^3/x^2 + b^4*c^3/x (0.0674s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x^7 )dx = -a^4*c^3/(6*x^6) + 2*a^3*b*c^3/(5*x^5) - 2*a*b^3*c^3/(3*x^3) + b^4*c^3/(2*x^2) (0.0723s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^3/x^8 )dx = -a^4*c^3/(7*x^7) + a^3*b*c^3/(3*x^6) - a*b^3*c^3/(2*x^4) + b^4*c^3/(3*x^3) (0.081s)
[ ok ]∫( x^4*(a + b*x)*(a*c - b*c*x)^4 )dx = a^5*c^4*x^5/5 - a^4*b*c^4*x^6/2 + 2*a^3*b^2*c^4*x^7/7 + a^2*b^3*c^4*x^8/4 - a*b^4*c^4*x^9/3 + b^5*c^4*x^10/10 (0.0038s)
[ ok ]∫( x^3*(a + b*x)*(a*c - b*c*x)^4 )dx = a^5*c^4*x^4/4 - 3*a^4*b*c^4*x^5/5 + a^3*b^2*c^4*x^6/3 + 2*a^2*b^3*c^4*x^7/7 - 3*a*b^4*c^4*x^8/8 + b^5*c^4*x^9/9 (0.0021s)
[fail]∫( x^2*(a + b*x)*(a*c - b*c*x)^4 )dx = -2*a^3*c^4*(a - b*x)^5/(5*b^3) + 5*a^2*c^4*(a - b*x)^6/(6*b^3) - 4*a*c^4*(a - b*x)^7/(7*b^3) + c^4*(a - b*x)^8/(8*b^3) but got a^5*c^4*x^3/3 - 3*a^4*b*c^4*x^4/4 + 2*a^3*b^2*c^4*x^5/5 + a^2*b^3*c^4*x^6/3 - 3*a*b^4*c^4*x^7/7 + b^5*c^4*x^8/8 (0.0021s)
[fail]∫( x*(a + b*x)*(a*c - b*c*x)^4 )dx = -2*a^2*c^4*(a - b*x)^5/(5*b^2) + a*c^4*(a - b*x)^6/(2*b^2) - c^4*(a - b*x)^7/(7*b^2) but got a^5*c^4*x^2/2 - a^4*b*c^4*x^3 + a^3*b^2*c^4*x^4/2 + 2*a^2*b^3*c^4*x^5/5 - a*b^4*c^4*x^6/2 + b^5*c^4*x^7/7 (0.0022s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^4 )dx = -2*a*c^4*(a - b*x)^5/(5*b) + c^4*(a - b*x)^6/(6*b) but got a^5*c^4*x - 3*a^4*b*c^4*x^2/2 + 2*a^3*b^2*c^4*x^3/3 + a^2*b^3*c^4*x^4/2 - 3*a*b^4*c^4*x^5/5 + b^5*c^4*x^6/6 (0.0027s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x )dx = a^5*c^4*log(x) - 3*a^4*b*c^4*x + a^3*b^2*c^4*x^2 + 2*a^2*b^3*c^4*x^3/3 - 3*a*b^4*c^4*x^4/4 + b^5*c^4*x^5/5 (0.0229s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^2 )dx = -a^5*c^4/x - 3*a^4*b*c^4*log(x) + 2*a^3*b^2*c^4*x + a^2*b^3*c^4*x^2 - a*b^4*c^4*x^3 + b^5*c^4*x^4/4 (0.0291s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^3 )dx = -a^5*c^4/(2*x^2) + 3*a^4*b*c^4/x + 2*a^3*b^2*c^4*log(x) + 2*a^2*b^3*c^4*x - 3*a*b^4*c^4*x^2/2 + b^5*c^4*x^3/3 (0.0419s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^4 )dx = -a^5*c^4/(3*x^3) + 3*a^4*b*c^4/(2*x^2) - 2*a^3*b^2*c^4/x + 2*a^2*b^3*c^4*log(x) - 3*a*b^4*c^4*x + b^5*c^4*x^2/2 (0.0585s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^5 )dx = -a^5*c^4/(4*x^4) + a^4*b*c^4/x^3 - a^3*b^2*c^4/x^2 - 2*a^2*b^3*c^4/x - 3*a*b^4*c^4*log(x) + b^5*c^4*x (0.082s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^6 )dx = -a^5*c^4/(5*x^5) + 3*a^4*b*c^4/(4*x^4) - 2*a^3*b^2*c^4/(3*x^3) - a^2*b^3*c^4/x^2 + 3*a*b^4*c^4/x + b^5*c^4*log(x) (0.1008s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^4/x^7 )dx = -c^4*(a - b*x)^5/(6*x^6) - 7*b*c^4*(a - b*x)^5/(30*a*x^5) but got (-5*a^5*c^4 + 18*a^4*b*c^4*x - 15*a^3*b^2*c^4*x^2 - 20*a^2*b^3*c^4*x^3 + 45*a*b^4*c^4*x^4 - 30*b^5*c^4*x^5)/(30*x^6) (0.1089s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^8 )dx = -a^5*c^4/(7*x^7) + a^4*b*c^4/(2*x^6) - 2*a^3*b^2*c^4/(5*x^5) - a^2*b^3*c^4/(2*x^4) + a*b^4*c^4/x^3 - b^5*c^4/(2*x^2) (0.1154s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^4/x^9 )dx = -a^5*c^4/(8*x^8) + 3*a^4*b*c^4/(7*x^7) - a^3*b^2*c^4/(3*x^6) - 2*a^2*b^3*c^4/(5*x^5) + 3*a*b^4*c^4/(4*x^4) - b^5*c^4/(3*x^3) (0.1218s)
[ ok ]∫( x^4*(a + b*x)*(a*c - b*c*x)^5 )dx = a^6*c^5*x^5/5 - 2*a^5*b*c^5*x^6/3 + 5*a^4*b^2*c^5*x^7/7 - 5*a^2*b^4*c^5*x^9/9 + 2*a*b^5*c^5*x^10/5 - b^6*c^5*x^11/11 (0.0041s)
[ ok ]∫( x^3*(a + b*x)*(a*c - b*c*x)^5 )dx = a^6*c^5*x^4/4 - 4*a^5*b*c^5*x^5/5 + 5*a^4*b^2*c^5*x^6/6 - 5*a^2*b^4*c^5*x^8/8 + 4*a*b^5*c^5*x^9/9 - b^6*c^5*x^10/10 (0.0021s)
[fail]∫( x^2*(a + b*x)*(a*c - b*c*x)^5 )dx = -a^3*c^5*(a - b*x)^6/(3*b^3) + 5*a^2*c^5*(a - b*x)^7/(7*b^3) - a*c^5*(a - b*x)^8/(2*b^3) + c^5*(a - b*x)^9/(9*b^3) but got a^6*c^5*x^3/3 - a^5*b*c^5*x^4 + a^4*b^2*c^5*x^5 - 5*a^2*b^4*c^5*x^7/7 + a*b^5*c^5*x^8/2 - b^6*c^5*x^9/9 (0.0023s)
[fail]∫( x*(a + b*x)*(a*c - b*c*x)^5 )dx = -a^2*c^5*(a - b*x)^6/(3*b^2) + 3*a*c^5*(a - b*x)^7/(7*b^2) - c^5*(a - b*x)^8/(8*b^2) but got a^6*c^5*x^2/2 - 4*a^5*b*c^5*x^3/3 + 5*a^4*b^2*c^5*x^4/4 - 5*a^2*b^4*c^5*x^6/6 + 4*a*b^5*c^5*x^7/7 - b^6*c^5*x^8/8 (0.0021s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^5 )dx = -a*c^5*(a - b*x)^6/(3*b) + c^5*(a - b*x)^7/(7*b) but got a^6*c^5*x - 2*a^5*b*c^5*x^2 + 5*a^4*b^2*c^5*x^3/3 - a^2*b^4*c^5*x^5 + 2*a*b^5*c^5*x^6/3 - b^6*c^5*x^7/7 (0.0027s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x )dx = a^6*c^5*log(x) - 4*a^5*b*c^5*x + 5*a^4*b^2*c^5*x^2/2 - 5*a^2*b^4*c^5*x^4/4 + 4*a*b^5*c^5*x^5/5 - b^6*c^5*x^6/6 (0.0241s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^2 )dx = -a^6*c^5/x - 4*a^5*b*c^5*log(x) + 5*a^4*b^2*c^5*x - 5*a^2*b^4*c^5*x^3/3 + a*b^5*c^5*x^4 - b^6*c^5*x^5/5 (0.0292s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^3 )dx = -a^6*c^5/(2*x^2) + 4*a^5*b*c^5/x + 5*a^4*b^2*c^5*log(x) - 5*a^2*b^4*c^5*x^2/2 + 4*a*b^5*c^5*x^3/3 - b^6*c^5*x^4/4 (0.0414s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^5/x^4 )dx = -c^5*(a - b*x)^6/(3*x^3) but got -5*a^2*b^4*c^5*x + 2*a*b^5*c^5*x^2 - b^6*c^5*x^3/3 - (a^6*c^5 - 6*a^5*b*c^5*x + 15*a^4*b^2*c^5*x^2)/(3*x^3) (0.0456s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^5 )dx = -a^6*c^5/(4*x^4) + 4*a^5*b*c^5/(3*x^3) - 5*a^4*b^2*c^5/(2*x^2) - 5*a^2*b^4*c^5*log(x) + 4*a*b^5*c^5*x - b^6*c^5*x^2/2 (0.0698s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^6 )dx = -a^6*c^5/(5*x^5) + a^5*b*c^5/x^4 - 5*a^4*b^2*c^5/(3*x^3) + 5*a^2*b^4*c^5/x + 4*a*b^5*c^5*log(x) - b^6*c^5*x (0.0892s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^7 )dx = -a^6*c^5/(6*x^6) + 4*a^5*b*c^5/(5*x^5) - 5*a^4*b^2*c^5/(4*x^4) + 5*a^2*b^4*c^5/(2*x^2) - 4*a*b^5*c^5/x - b^6*c^5*log(x) (0.1176s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^5/x^8 )dx = -c^5*(a - b*x)^6/(7*x^7) - 4*b*c^5*(a - b*x)^6/(21*a*x^6) but got -(3*a^6*c^5 - 14*a^5*b*c^5*x + 21*a^4*b^2*c^5*x^2 - 35*a^2*b^4*c^5*x^4 + 42*a*b^5*c^5*x^5 - 21*b^6*c^5*x^6)/(21*x^7) (0.1225s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^5/x^9 )dx = -c^5*(a - b*x)^6/(8*x^8) - 5*b*c^5*(a - b*x)^6/(28*a*x^7) - 5*b^2*c^5*(a - b*x)^6/(168*a^2*x^6) but got -(21*a^6*c^5 - 96*a^5*b*c^5*x + 140*a^4*b^2*c^5*x^2 - 210*a^2*b^4*c^5*x^4 + 224*a*b^5*c^5*x^5 - 84*b^6*c^5*x^6)/(168*x^8) (0.1349s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^10 )dx = -a^6*c^5/(9*x^9) + a^5*b*c^5/(2*x^8) - 5*a^4*b^2*c^5/(7*x^7) + a^2*b^4*c^5/x^5 - a*b^5*c^5/x^4 + b^6*c^5/(3*x^3) (0.1386s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^11 )dx = -a^6*c^5/(10*x^10) + 4*a^5*b*c^5/(9*x^9) - 5*a^4*b^2*c^5/(8*x^8) + 5*a^2*b^4*c^5/(6*x^6) - 4*a*b^5*c^5/(5*x^5) + b^6*c^5/(4*x^4) (0.1498s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^5/x^12 )dx = -a^6*c^5/(11*x^11) + 2*a^5*b*c^5/(5*x^10) - 5*a^4*b^2*c^5/(9*x^9) + 5*a^2*b^4*c^5/(7*x^7) - 2*a*b^5*c^5/(3*x^6) + b^6*c^5/(5*x^5) (0.1515s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^6/x^8 )dx = -a^7*c^6/(7*x^7) + 5*a^6*b*c^6/(6*x^6) - 9*a^5*b^2*c^6/(5*x^5) + 5*a^4*b^3*c^6/(4*x^4) + 5*a^3*b^4*c^6/(3*x^3) - 9*a^2*b^5*c^6/(2*x^2) + 5*a*b^6*c^6/x + b^7*c^6*log(x) (0.1616s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^6/x^9 )dx = -c^6*(a - b*x)^7/(8*x^8) - 9*b*c^6*(a - b*x)^7/(56*a*x^7) but got (-7*a^7*c^6 + 40*a^6*b*c^6*x - 84*a^5*b^2*c^6*x^2 + 56*a^4*b^3*c^6*x^3 + 70*a^3*b^4*c^6*x^4 - 168*a^2*b^5*c^6*x^5 + 140*a*b^6*c^6*x^6 - 56*b^7*c^6*x^7)/(56*x^8) (0.1702s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^6/x^10 )dx = -c^6*(a - b*x)^7/(9*x^9) - 11*b*c^6*(a - b*x)^7/(72*a*x^8) - 11*b^2*c^6*(a - b*x)^7/(504*a^2*x^7) but got (-56*a^7*c^6 + 315*a^6*b*c^6*x - 648*a^5*b^2*c^6*x^2 + 420*a^4*b^3*c^6*x^3 + 504*a^3*b^4*c^6*x^4 - 1134*a^2*b^5*c^6*x^5 + 840*a*b^6*c^6*x^6 - 252*b^7*c^6*x^7)/(504*x^9) (0.1787s)
[fail]∫( (a + b*x)*(a*c - b*c*x)^6/x^11 )dx = -c^6*(a - b*x)^7/(10*x^10) - 13*b*c^6*(a - b*x)^7/(90*a*x^9) - 13*b^2*c^6*(a - b*x)^7/(360*a^2*x^8) - 13*b^3*c^6*(a - b*x)^7/(2520*a^3*x^7) but got (-252*a^7*c^6 + 1400*a^6*b*c^6*x - 2835*a^5*b^2*c^6*x^2 + 1800*a^4*b^3*c^6*x^3 + 2100*a^3*b^4*c^6*x^4 - 4536*a^2*b^5*c^6*x^5 + 3150*a*b^6*c^6*x^6 - 840*b^7*c^6*x^7)/(2520*x^10) (0.1902s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^6/x^12 )dx = -a^7*c^6/(11*x^11) + a^6*b*c^6/(2*x^10) - a^5*b^2*c^6/x^9 + 5*a^4*b^3*c^6/(8*x^8) + 5*a^3*b^4*c^6/(7*x^7) - 3*a^2*b^5*c^6/(2*x^6) + a*b^6*c^6/x^5 - b^7*c^6/(4*x^4) (0.1959s)
[ ok ]∫( (a + b*x)*(a*c - b*c*x)^6/x^13 )dx = -a^7*c^6/(12*x^12) + 5*a^6*b*c^6/(11*x^11) - 9*a^5*b^2*c^6/(10*x^10) + 5*a^4*b^3*c^6/(9*x^9) + 5*a^3*b^4*c^6/(8*x^8) - 9*a^2*b^5*c^6/(7*x^7) + 5*a*b^6*c^6/(6*x^6) - b^7*c^6/(5*x^5) (0.2081s)
16/49 tests failed in MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl
Total=3.346s, Avg=0.0683s, Min=0.0016s, Max=0.2081s



================================================================================
================================================================================
================================================================================
44/163 tests failed in all testsets
Total=7.779s, Avg=0.0477s

```