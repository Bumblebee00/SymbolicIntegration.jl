# SymbolicIntegration

[![Build Status](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml?query=branch%3Amain)

# Testing

There is a test suit of ~70k integration problems. Rn they are still in mathematica syntax, and they can be translated into julia with the `testset_translator.jl` script (still experimental). Once they are all transalted the mathematica syntax ones will be removed. I translated only the first two in julia.

These test can be used to test the package, but also other packages in order to compare them. For example the script `test_SymbolicNumericIntegration.jl` tests the package `SymbolicNumericIntegration.jl`.

Is still experimental, there are some problems as you can see from this line: `    ∫( 1 / (x^2) )dx = -(1 / x) but got (-1 / x, 0, 0.0) (0.5295s)`. In fact it has not yet been tested with all the tests.

```julia
~/.julia/dev/SymbolicIntegration.jl/test (main ✗) julia test_SymbolicNumericIntegration.jl
About to test SymbolicNumericIntegration.jl with2 test sets
Note: The results from SymbolicNumericIntegration showed are a tuple of (solution, unsolved portion, error)

Loading test data from MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl...
Testing 25 integrals...
    ∫( 0 )dx = 0 (0.2211s)
    ∫( 1 )dx = x (0.0026s)
    ∫( 5 )dx = 5x (0.0s)
    ∫( -2 )dx = -2x (0.0s)
    ∫( -1.5 )dx = -1.5x (0.0295s)
    ∫( π )dx = πx (0.9972s)
    ∫( a )dx = a*x (0.4159s)
    ∫( 3a )dx = 3a*x (0.1192s)
    ∫( 1.070593230002168 )dx = 1.070593230002168x (0.0s)
    ∫( x^100 )dx = (1//101)*(x^101) but got (0, x^100, Inf) (9.8187s)
    ∫( x^3 )dx = (1//4)*(x^4) (4.1965s)
    ∫( x^2 )dx = (1//3)*(x^3) (0.0477s)
    ∫( x )dx = (1//2)*(x^2) (0.079s)
    ∫( 1 )dx = x (0.0034s)
    ∫( 1 / x )dx = log(x) (3.0821s)
    ∫( 1 / (x^2) )dx = -(1 / x) but got (-1 / x, 0, 0.0) (0.5295s)
    ∫( 1 / (x^3) )dx = -(1 / (2(x^2))) but got ((-1//2)*((1 / x)^2), 0, 0) (0.3801s)
    ∫( 1 / (x^4) )dx = -(1 / (3(x^3))) but got ((-1//3)*((1 / x)^3), 0, 0.0) (0.039s)
    ∫( 1 / (x^100) )dx = -1 / (99(x^99)) but got (0, (1 / x)^100, Inf) (1.5494s)
    ∫( x^2.5 )dx = (2//7)*(x^3.5) (1.3121s)
    ∫( x^1.5 )dx = (2//5)*(x^2.5) (0.0127s)
    ∫( x^0.5 )dx = (2//3)*(x^1.5) (0.0095s)
    ∫( 1 / (x^0.5) )dx = 2sqrt(x) but got (2(x^0.5), 0, 0) (0.3126s)
    ∫( 1 / (x^1.5) )dx = -2 / sqrt(x) but got (-2(x^0.5)*((1 / (x^0.5))^2), 0, 5.329070518200751e-15) (0.4826s)
    ∫( 1 / (x^2.5) )dx = -2 / (3(x^1.5)) but got ((-2//3)*(x^0.5)*((1 / (x^0.5))^4), 0, 5.551115123125783e-17) (0.272s)
8/25 tests failed in MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl
Total=23.913s, Avg=0.9565s, Min=0.0s, Max=9.8187s



Loading test data from MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl...
Testing 12 integrals...
    ∫( (x^2) / (((-1 + x)^2)*((1 + x)^2)) )dx = x / (2(1 - (x^2))) - (1//2)*atanh(x) but got ((1//4)*log(-1 + x) - (1//4)*log(1 + x) + (-2(x^2)) / (-4x + 4(x^3)), 0, 1.1102230246251565e-16) (1.4225s)
[ Info: The input expression has constant parameters: [b, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
    ∫( (a + b*x)*((a*c - b*c*x)^3)*(x^2) )dx = 0.3333333333333333(a^4)*(c^3)*(x^3) - 0.5(a^3)*b*(c^3)*(x^4) + 0.3333333333333333a*(b^3)*(c^3)*(x^6) - 0.14285714285714285(b^4)*(c^3)*(x^7) but got ((1//3)*(a^4)*(c^3)*(x^3) - (1//2)*(a^3)*b*(c^3)*(x^4) + (1//3)*a*(b^3)*(c^3)*(x^6) - (1//7)*(b^4)*(c^3)*(x^7), 0, 0) (3.6557s)
[ Info: The input expression has constant parameters: [a, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
    ∫( (a + b*x)*((a*c - b*c*x)^3)*x )dx = 0.5(a^4)*(c^3)*(x^2) - 0.6666666666666666(a^3)*b*(c^3)*(x^3) + 0.4a*(b^3)*(c^3)*(x^5) - 0.16666666666666666(b^4)*(c^3)*(x^6) but got ((1//2)*(a^4)*(c^3)*(x^2) - (2//3)*(a^3)*b*(c^3)*(x^3) + (2//5)*a*(b^3)*(c^3)*(x^5) - (1//6)*(b^4)*(c^3)*(x^6), 0, 0) (0.232s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [b, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, c], forcing `symbolic = true`
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
    ∫( (a + b*x)*((a*c - b*c*x)^3) )dx = (-a*((a - b*x)^4)*(c^3)) / (2b) + (((a - b*x)^5)*(c^3)) / (5b) but got ((a^4)*(c^3)*x - (a^3)*b*(c^3)*(x^2) + (1//2)*a*(b^3)*(c^3)*(x^4) - (1//5)*(b^4)*(c^3)*(x^5), 0, 0) (0.247s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / x )dx = (a^4)*(c^3)*log(x) - 2(a^3)*b*(c^3)*x + 0.6666666666666666a*(b^3)*(c^3)*(x^3) - 0.25(b^4)*(c^3)*(x^4) but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / x, Inf) (4.8996s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^2) )dx = (-(a^4)*(c^3)) / x - 2(a^3)*b*(c^3)*log(x) + a*(b^3)*(c^3)*(x^2) - 0.3333333333333333(b^4)*(c^3)*(x^3) but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^2), Inf) (2.3391s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^3) )dx = -((((a - b*x)^4)*(c^3)) / (2(x^2))) but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^3), Inf) (9.4135s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^4) )dx = (-(a^4)*(c^3)) / (3(x^3)) + ((a^3)*b*(c^3)) / (x^2) + 2a*(b^3)*(c^3)*log(x) - (b^4)*(c^3)*x but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^4), Inf) (2.3759s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^5) )dx = (-(a^4)*(c^3)) / (4(x^4)) + (2(a^3)*b*(c^3)) / (3(x^3)) + (-2a*(b^3)*(c^3)) / x - (b^4)*(c^3)*log(x) but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^5), Inf) (1.8782s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^6) )dx = (-a*(b^3)*(c^3)) / (x^2) + ((a^3)*b*(c^3)) / (2(x^4)) + (-(a^4)*(c^3)) / (5(x^5)) + ((b^4)*(c^3)) / x but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^6), Inf) (1.9344s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^7) )dx = (-2a*(b^3)*(c^3)) / (3(x^3)) + (-(a^4)*(c^3)) / (6(x^6)) + ((b^4)*(c^3)) / (2(x^2)) + (2(a^3)*b*(c^3)) / (5(x^5)) but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^7), Inf) (2.3178s)
[ Info: The input expression has constant parameters: [a, b, c], forcing `symbolic = true`
[ Info: Symbolic integration failed. Try changing constant parameters ([a, b, c]) to numerical values.
    ∫( ((a + b*x)*((a*c - b*c*x)^3)) / (x^8) )dx = ((a^3)*b*(c^3)) / (3(x^6)) + (-a*(b^3)*(c^3)) / (2(x^4)) + ((b^4)*(c^3)) / (3(x^3)) + (-(a^4)*(c^3)) / (7(x^7)) but got (0, ((a^4)*(c^3) - 2(a^3)*b*(c^3)*x + 2a*(b^3)*(c^3)*(x^3) - (b^4)*(c^3)*(x^4)) / (x^8), Inf) (2.4259s)
12/12 tests failed in MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl
Total=33.142s, Avg=2.7618s, Min=0.232s, Max=9.4135s
```