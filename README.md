# SymbolicIntegration

[![Build Status](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Rules](https://img.shields.io/badge/dynamic/json?url=https://raw.githubusercontent.com/Bumblebee00/SymbolicIntegration.jl/main/.github/badges/rules-count.json&query=$.message&label=Total%20rules&color=blue)](https://github.com/Bumblebee00/SymbolicIntegration.jl)
[![Spell Check](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/spellcheck.yml/badge.svg?branch=main)](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/spellcheck.yml)

- [Usage](#usage)
- [How it works internally](#how-it-works-internally)
- [Problems](#problems)
  - [Serious](#serious)
    - [neim problem](#neim-problem)
  - [Mild](#mild)
    - [mild problem: oooomm](#mild-problem-oooomm)
      - [Example in intgeration](#example-in-intgeration)
      - [another example](#another-example)
  - [Minor](#minor)
- [Contributing](#contributing)
  - [Common problems when translating rules](#common-problems-when-translating-rules)
  - [Description of the script `src/translator_of_rules.jl`](#description-of-the-script-srctranslator_of_rulesjl)
- [Testing](#testing)
  - [Testing other packages](#testing-other-packages)
    - [SymbolicNumericIntegration.jl](#symbolicnumericintegrationjl)
    - [SymPy.jl](#sympyjl)

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
This package uses a rule based approach to integrate a vast class of functions, and it's built using the rules from the Mathematica package [RUBI](https://rulebasedintegration.org/). The rules are defined using the SymbolicUtils [rule macro](https://symbolicutils.juliasymbolics.org/rewrite/#rule-based_rewriting) and are of this form:
```julia
# rule 1_1_1_1_2
@rule ∫((~x)^(~!m),(~x)) =>
    !contains_var((~m), (~x)) &&
    !eq((~m), -1) ?
(~x)^((~m) + 1)⨸((~m) + 1) : nothing
```
The rule left hand side pattern is the symbolic function `∫(var1, var2)` where first variable is the integrand and second is the integration variable. After the => there are some conditions to determine if the rules are applicable, and after the ? there is the transformation. Note that this may still contain a integral, so a walk in pre order of the tree representing the symbolic expression is done, applying rules to each node containing the integral.

The infix operator `⨸` is used to represent a custom division function, if called on integers returns a rational and if called on floats returns a float. This is done because // operator does not support floats. This specific character was chosen because it resembles the division symbol and because it has the same precedence as /.

Not all rules are yet translated, I am each day translating more of them. If you want to know how read the section [contributing](#contributing). If you enconunter any issues using the package, please write me or open a issue on the repo.

# Problems
## Serious
Serious problems are problems that strongly impact the correct functioning of the rule based symbolic integrator and are difficult to fix. Here are the ones i encountered so far:
### neim problem
neim stands for negative exponents in multiplications
If I define a rule with this pattern `@rule ((~!a) + (~!b)*(~x))^(~m)*((~!c) + (~!d)*(~x))^(~n)~))` it can correctly match something like `(1+2x)^2 * (3+4x)^3`. But when one of the two exponents is negative, let's say -3, this expression is represented in julia as `(1+2x)^2 / (3+4x)^3)`. Or when both are negative, the expression is represented as `1 / ( (1+2x)^2 * (3+4x)^3 )`. The matcher inside the rule instead, searches for a * as first operation, and thus doesn't recognize the expression. For this reason `(1 + 3x)^2 / (1 + 2x))`, `(x^6) / (1 + 2(x^6))` and many other expressions dont get integrated.

A workaround I implemented is this:
```
julia> ins(expr) = SymbolicUtils.Term{Number}(^,[expr,-1])
ins (generic function with 1 method)

julia> r = @rule (~n)/*(~d) => ~n*ins(~d)
~n / (*)(~(~d)) => ~n * prod([ins(el) for el = ~(~d)])

julia> r(a*b/(c*x))
a*b*(c^-1)*(x^-1)
```
creating a power with negative exponent, with `Term` and not with `^`, doesnt autosimplify it to a division with positive exponent. So the rule can be applied. But is not good enough. here is a list of expressions not integrating due to this problem
- log(x) / (x*sqrt(1 + log(x))) rule 3_1_5_36 
- 1 / (x*sqrt(1 - (x^2))
- log(1 - t) / (1 - t)
- (1 + x^2) / x


- general rules for trig with F

## Mild
Mild problems are problems that impact the correct functioning of the rule based symbolic integrator and are medium difficulty to fix. Here are the ones I encountered so far:

- In the Mathematica package is defined the `ExpandIntegrand` function that expands a lot of mathematical expression (is defined in more than 360 rules of code) in strange ways. Not all cases are been adderssed for now

- when testing, one checks that the integral is correct with `isequal(simplify(computed_result  - real_result;expand=true), 0)` but this doesnt always work. For example:
```
[fail]∫( (x^2)*sqrt(1 + x) )dx = 
  (2//3)*((1 + x)^(3//2)) - (4//5)*((1 + x)^(5//2)) + (2//7)*((1 + x)^(7//2)) but got:
  -(4//7)*(-(2//3)*((1 + x)^(3//2)) + (2//5)*((1 + x)^(5//2))) + (2//7)*((1 + x)^(3//2))*(x^2)
[fail]∫( (2^sqrt(x)) / sqrt(x) )dx = 1.4426950408889634(2^(1 + sqrt(x))) but got:
      2.8853900817779268(2^(x^(1//2))) (0.2489s)
```
even tough the two are mathematically equivalent

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

- integrals with complex numbers dont work very well

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
`1/(sqrt(1+200x)*sqrt(2-x))` should integrate with the rule
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
- in runtests, exp(x) is not recognized as ℯ^x. This is because integration produces a ℯ^x that doesnt get automatically translated into exp(x) like happens in the REPL
- roots of numbers are not treated simbolically but immediately calculated. So instead of the beautiful `integrate(1/(sqrt(1+2x)*sqrt(3+4x))) = asinh(sqrt(2)*sqrt(1+2x))/sqrt(2)`, i have ` = 0.7071067811865475asinh(1.414213562373095sqrt(1 + 2x))`. Or instead of `integrate(2^x) = 2^x / log(2)`, i have `integrate(2^x) = 1.4426950408889634*2^x`. Or instead of `integrate((2/sqrt(π))*exp(-x^2)) = SpecialFunctions.erf(x)` I have  `integrate((2/sqrt(π))*exp(-x^2)) = 0.9999999999999999SpecialFunctions.erf(x)`
- the variable USE_GAMMA is used to choose if gamma function is used in the results or not. But right now is not configurable by the user, and if changed doesnt change the behaviour of th eintegration but a reload_rules() is needed, i dont know why.
- why here the coefficient is Inf ?
```
julia> integrate((3 + 4*x)^2.2/(1 + 2*x))
No rule found for ∫(((3 + 4x)^2.2) / (1 + 2x), x)
integration of ∫(((3 + 4x)^2.2) / (1 + 2x), x) failed, trying with this mathematically equivalent integrand:
∫(((1 + 2x)^-1)*((3 + 4x)^2.2), x)
┌-------Applied rule 1_1_1_2_37 on ∫(((1 + 2x)^-1)*((3 + 4x)^2.2), x)
| ∫((a + b * x) ^ (m::!ext_isinteger) * (c + d * x) ^ (n::ext_isinteger), x) => if 
|       !(contains_var(a, b, c, d, m, x)) &&
|       !(eq(b * c - a * d, 0))
| (((b * c - a * d) ^ n * (a + b * x) ^ (m + 1)) / (b ^ (n + 1) * (m + 1))) * hypergeometric2f1(-n, m + 1, m + 2, (-d * (a + b * x)) / (b * c - a * d))
└-------with result: Inf*SymbolicIntegration.hypergeometric2f1(-2.2, 0, 1, (-2//1)*(1 + 2x))
Inf*SymbolicIntegration.hypergeometric2f1(-2.2, 0, 1, (-2//1)*(1 + 2x))

```
# Contributing
In this repo there is also some software that serves the sole purpose of helping with the translation of rules from Mathematica syntax, and not for the actual package working. The important ones are:
- translator_of_rules.jl is a script that with regex and other string manipulations translates from Mathematica syntax to julia syntax
- translator_of_testset.jl is a script that translates the testsets into julia syntax (much simpler than translator_of_rules.jl)
- `reload_rules` function in rules_loader.jl. When developing the package using Revise is not enough because rules are defined with a macro. So this function reloads rules from a specific .jl file or from all files if called without arguments.

my typical workflow is:
- translate a rule file with translator_of_rules.jl. In the resulting file there could be some problems:
- - maybe a Mathematica function that i never encountered before and therefore not included in the translation script (and in rules_utility_functions.jl)
- - maybe a Mathematica syntax that I never encountered before and not included in the translation script
- - others, see [Common problems when translating rules](#common-problems-when-translating-rules)
- If the problem is quite common in other rules: implement in the translation script and translate the rule again, otherwise fix it manually in the .jl file

The rules not yet translated are mainly those from sections 4 to 8

## Common problems when translating rules
### function not translated
If you encounter a normal function that is not translated by the script, it will stay untranslated, with square brackets, like this:
```
sqrt(Sign[(~b)]*sin((~e) + (~f)*(~x)))⨸sqrt((~d)*sin((~e) + (~f)*(~x)))* ∫(1⨸(sqrt((~a) + (~b)*sin((~e) + (~f)*(~x)))*sqrt(Sign[(~b)]*sin((~e) + (~f)*(~x)))), (~x)) : nothing)
```
a trick to find them fast is to search the regex pattern `(?<=^[^#]).*\[` in all the file. If you find them and they are already presen in julia or you implement them in rules_utility_functions.jl, you can simply add the to the smart_replace list in the translator and translate the script again.

### Sum function translation
the `Sum[...]` function gets translated with this regex:
```
(r"Sum\[(.*?),\s*\{(.*?),(.*?),(.*?)\}\]", s"sum([\1 for \2 in (\3):(\4)])"), 
```
its quite common that the \1 is a <=2 letter variable, and so will get translated from the translator into a slot variable, appending ~.

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

### * not present or present as \[Star]
in Mathematica if you write `a b` or `a \[Star] b` is interpreted as `a*b`. So sometimes in the rules is written like that. When it happens i usually add the * in the mathematica file,  and then i translate it

## Description of the script `src/translator_of_rules.jl`
This script is used to translate integration rules from Mathematica syntax
to julia Syntax.

### How to use it
``` bash
julia src/translator_of_rules.jl "src/rules/4 Trig functions/4.1 Sine/4.1.8 trig^m (a+b cos^p+c sin^q)^n.m"
```
and will produce the julia file at the path `src/rules/4 Trig functions/4.1 Sine/4.1.8 trig^m (a+b cos^p+c sin^q)^n.jl`

### How it works internally (useful to know if you have to debug it)
It processes line per line, so the integration rule must be all on only one 
line. Let's say we translate this (fictional) rule:
```
Int[x_^m_./(a_ + b_. + c_.*x_^4), x_Symbol] := With[{q = Rt[a/c, 2], r = Rt[2*q - b/c, 2]}, 1/(2*c*r)*Int[x^(m - 3), x] - 1/(2*c*r) /; OddQ[r]] /; FreeQ[{a, b, c}, x] && (NeQ[b^2 - 4*a*c, 0] || (GeQ[m, 3] && LtQ[m, 4])) && NegQ[b^2 - 4*a*c]
```
#### With syntax
for each line it first check if there is the With syntax, a syntax in Mathematica
that enables to define variables in a local scope. If yes it can do two things:
In the new method translates the block using the let syntax, like this:
```julia
@rule ∫((~x)^(~!m)/((~a) + (~!b) + (~!c)*(~x)^4),(~x)) =>
    !contains_var((~a), (~b), (~c), (~x)) &&
    (
        !eq((~b)^2 - 4*(~a)*(~c), 0) ||
        (
            ge((~m), 3) &&
            lt((~m), 4)
        )
    ) &&
    neg((~b)^2 - 4*(~a)*(~c)) ?
let
    q = rt((~a)⨸(~c), 2)
    r = rt(2*q - (~b)⨸(~c), 2)
    
    ext_isodd(r) ?
    1⨸(2*(~c)*r)*∫((~x)^((~m) - 3), (~x)) - 1⨸(2*(~c)*r) : nothing
end : nothing
```
The old method was to finds the defined variables and substitute them with their
definition. Also there could be conditions inside the With block (OddQ in the example),
that were bought outside.
```
1/(2*c*Rt[2*q - b/c, 2])*Int[x^(m - 3), x] - 1/(2*c*Rt[2*q - b/c, 2])/;  FreeQ[{a, b, c}, x] && (NeQ[b^2 - 4*a*c, 0] || (GeQ[m, 3] && LtQ[m, 4])) && NegQ[b^2 - 4*a*c] &&  OddQ[Rt[2*q - b/c, 2]]
```
#### replace and smart_replace applications
Then the line is split into integral, result, and conditions:
```
Int[x_^m_./(a_ + b_. + c_.*x_^4), x_Symbol]
```
```
1/(2*c*Rt[2*q - b/c, 2])*Int[x^(m - 3), x] - 1/(2*c*Rt[2*q - b/c, 2])
```
```
FreeQ[{a, b, c}, x] && (NeQ[b^2 - 4*a*c, 0] || (GeQ[m, 3] && LtQ[m, 4])) && NegQ[b^2 - 4*a*c] &&  OddQ[Rt[2*q - b/c, 2]]
```

Each one of them is translated using the appropriate function, but the three
all work the same. They first apply a number of times the smart_replace function,
that replaces functions names without messing the nested brackets (like normal regex do)
```
smart_replace("ArcTan[Rt[b, 2]*x/Rt[a, 2]] + Log[x]", "ArcTan", "atan")
# output
"atan(Rt[b, 2]*x/Rt[a, 2]) + Log[x]"
```
Then also the normal replace function is applied a number of times, for more
complex patterns. For example, every two letter word, optionally followed by 
numbers, that is not a function call (so not followed by open parenthesis), and
that is not the "in" word, is prefixed with a tilde `~`. This is because in
Mathematica you can reference the slot variables without any prefix, and in
julia you need ~.

#### Pretty indentation
Then they are all put together following the julia rules syntax
@rule integrand => conditions ? result : nothing
```
@rule ∫((~x)^(~!m)/((~a) + (~!b) + (~!c)*(~x)^4),(~x)) => !contains_var((~a), (~b), (~c), (~x)) && (!eq((~b)^2 - 4*(~a)*(~c), 0) || (ge((~m), 3) && lt((~m), 4))) && neg((~b)^2 - 4*(~a)*(~c)) && ext_isodd(rt(2*(~q) - (~b)/(~c), 2)) ? 1⨸(2*(~c)*rt(2*(~q) - (~b)⨸(~c), 2))*∫((~x)^((~m) - 3), (~x)) - 1⨸(2*(~c)*rt(2*(~q) - (~b)⨸(~c), 2)) : nothing
```
Usually the conditions are a lot of && and ||, so a pretty indentation is 
applied automatically that rewrites the rule like this:
```
@rule ∫((~x)^(~!m)/((~a) + (~!b) + (~!c)*(~x)^4),(~x)) =>
    !contains_var((~a), (~b), (~c), (~x)) &&
    (
        !eq((~b)^2 - 4*(~a)*(~c), 0) ||
        (
            ge((~m), 3) &&
            lt((~m), 4)
        )
    ) &&
    neg((~b)^2 - 4*(~a)*(~c)) &&
    ext_isodd(rt(2*(~q) - (~b)/(~c), 2)) ?
1⨸(2*(~c)*rt(2*(~q) - (~b)⨸(~c), 2))*∫((~x)^((~m) - 3), (~x)) - 1⨸(2*(~c)*rt(2*(~q) - (~b)⨸(~c), 2)) : nothing
```

#### end
finally the rule is placed in a tuple (index, rule), and all the
tuples are put into a array, ready to be included by load_rules

# Testing

There is a test suit of 27585 taken from the RUBI package, in the folders `test/test_files/0 Independent test suites` (1796 tests) and `test/test_files/1 Algebraic functions` (25798 tests). They can be used to test the package running
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
This will create a .out file with the test results. You can select which testests to test in the script `test/runtests.jl`.

Note that there are also other folders in `test/testset_files`, but they are in mathematica syntax taken from the RUBI repo. They can be translated into julia with the `testset_translator.jl` script:

Usage: `julia translator_of_testset.jl input_file.m [output_file.jl]`
If output_file is not specified, it will be input_file with .jl extension

To count how many tests are there you can use this command:
```bash
find "test/test_files/0 Independent test suites" -type f -exec grep -c '^(' {} \; | awk '{sum += $1} END {print "Total matches:", sum}' 
```