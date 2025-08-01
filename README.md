- [Usage](#usage)
- [How it works internally](#how-it-works-internally)
- [Problems](#problems)
  - [Serious](#serious)
  - [Mild](#mild)
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

julia> integrate(x/(x^2 +1) + π*exp(π*x);verbose=true)
┌---Applied rule 9_1_0 on ∫(x / (1 + x^2) + 3.141592653589793exp(πx), x)
| ∫(+(~(~a)), ~x) => sum(map((f->begin
|                     #= /Users/mmm/.julia/dev/SymbolicIntegration.jl/src/rules/9 Miscellaneous/9.1 Integrand simplification rules.jl:6 =#
|                     ∫(f, ~x)
|                 end), ~a))
└---with result: ∫(3.141592653589793exp(πx), x) + ∫(x / (1 + x^2), x)
┌---Applied rule 1_1_2_2_1 on ∫(x / (1 + x^2), x)
| ∫(~x / (~a + ~(!b) * (~x) ^ 2), ~x) => if !(contains_var(~a, ~b, ~x))
|         log(~a + ~b * (~x) ^ 2) ⨸ (2 * ~b)
|     else
|         nothing
|     end
└---with result: (1//2)*log(1 + x^2)
┌---Applied rule 9_1_12 on ∫(3.141592653589793exp(πx), x)
| ∫(~(~a) * ~u, ~x) => if !(contains_var(prod(~a), ~x))
|         prod(~a) * ∫(~u, ~x)
|     else
|         nothing
|     end
└---with result: 3.141592653589793∫(exp(πx), x)
┌---Applied rule 2_3_1 on ∫(exp(πx), x)
| ∫(((~F) ^ (~(!c) * (~(!a) + ~(!b) * ~x))) ^ ~(!n), ~x) => if !(contains_var(~F, ~a, ~b, ~c, ~n, ~x))
|         ((~F) ^ (~c * (~a + ~b * ~x))) ^ ~n ⨸ (~b * ~c * ~n * log(~F))
|     else
|         nothing
|     end
└---with result: 0.3183098861837907(ℯ^(πx))
(1//2)*log(1 + x^2) + ℯ^(πx)
```
first argument is the expression to integrate, second argument is the variable of integration. If the variable is not specified, it will be guessed from the expression. Put verbose=true to see intermediate integration steps, and the rules used to reach them.

In this development phase there is also a function `reload_rules` (to be called optionally with verbose=true) to reload the rules, because using Revise is not enough.

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
- pattern matching with negative powers. If I define a rule with this pattern `@rule ((~!a) + (~!b)*(~x))^(~m)*((~!c) + (~!d)*(~x))^(~n)~))` it can correctly match something like `(1+2x)^2 * (3+4x)^3`. But when one of the two exponents is negative, let's say -3, this expression is represented in julia as `(1+2x)^2 / (3+4x)^3)`. Or when both are negative, the expression is represented as `1 / ( (1+2x)^2 * (3+4x)^3 )`. The matcher inside the rule instad, searches for a * as first operation, and thus doesn't recognize the expression. For this reason `(1 + 3x)^2 / (1 + 2x))`, `(x^6) / (1 + 2(x^6))` and many other expressions dont get integrated
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

## Minor
- in runtests, exp(x) is not recognized as ℯ^x. This is because integration produces a ℯ^x that doesnt get automatically transalted into exp(x) like happens in the REPL
- roots of numbers are not treated simbolically but immediatly calcolated. So instead of the beautiful `integrate(1/(sqrt(1+2x)*sqrt(3+4x))) = asinh(sqrt(2)*sqrt(1+2x))/sqrt(2)`, i have ` = 0.7071067811865475asinh(1.414213562373095sqrt(1 + 2x))`. Or instead of `integrate(2^x) = 2^x / log(2)`, i have `integrate(2^x) = 1.4426950408889634*2^x`. Or instead of `integrate((2/sqrt(π))*exp(-x^2)) = SpecialFunctions.erf(x)` I have  `integrate((2/sqrt(π))*exp(-x^2)) = 0.9999999999999999SpecialFunctions.erf(x)`
- the variable USE_GAMMA is used to choose if gamma function is used in the results or not. But right now is not configurable by the user, and if changed doesnt change the behaviour of th eintegration but a reload_rules() is needed, i dont know why.

# Contributing
In this repo there is also some software that serves the sole purpose of helping with the translation of rules from Mathematica syntax, and not for the actual package working. The important ones are:
- rules_translator.jl is a script that with regex and other string manipulations translates from Mathematica syntax to julia syntax
- `reload_rules` function in rules_loader.jl. When developing the package using Revise is not enough because rules are definied with a macro. So this function reloads rules from a specific .jl file or from all files if called without arguments (it's called also once at the beginning when importing the package)

my typical workflow is:
- translate a rule file with rules translator. In the resulting file there are usually some problems, that could be: a Mathematica function that i never encountered before and therefore not included in the translation script (and in rules_utility_functions.jl), a Mathematica syntax that I never encountered before and not included in the translation script, stuff like this.
- If the problem is quite common in other rules: implement in the translation script and transalte the rule again, otherwise fix it manually in the .jl file
- Add some tests in the file each_rule_tests.jl, where I am collecting integrals that trigger (or should do so, if they don't something is broken) specific integration rules. I am not doing it for all rules because I dont have time, but two or three for each rule file

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