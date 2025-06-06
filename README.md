# SymbolicIntegration

[![Build Status](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Bumblebee00/SymbolicIntegration.jl/actions/workflows/CI.yml?query=branch%3Amain)

# Testing
There is a test suit of ~70kintegration problems. Rn they are still in mathematica syntax, and they can be translated into julia with the `testset_translator.jl` script (still experimental).

These test can be used to test the package, but also other packages in order to compare them. For example the script `test_SymbolicNumericIntegration.jl` (still experimental) tests the package `SymbolicNumericIntegration.jl`.