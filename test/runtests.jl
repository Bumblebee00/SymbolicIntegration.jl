using Test
using Symbolics
using SymbolicIntegration
using Elliptic # TODO how can we not import this two?
using HypergeometricFunctions

# test all tests in the testfile path. expects it to be
# an array called `data` of tuples of the form:
# (integrand, result, integration_var, number)
function test_from_file(path)
    !isfile(path) && error("Test set file not found: ", relpath(path))

    println("Loading test data from ", relpath(path), "...")
    include(path)

    println("Testing ", length(data), " integrals...")

    failed = 0
    times = Float64[]
    
    for tuple in data
        try
            elapsed_time = @elapsed computed_result = integrate(tuple[1], tuple[3]; verbose = false)
            push!(times, elapsed_time)

            if isequal(simplify(computed_result  - tuple[2];expand=true), 0)
                printstyled("[ ok ]∫( ", tuple[1], " )d", tuple[3], " = ", tuple[2], " (", round(elapsed_time, digits=4), "s)\n"; color = :green)
            else
                printstyled("[fail]∫( ", tuple[1], " )d", tuple[3], " = ", tuple[2], " but got:\n      ", computed_result, " (", round(elapsed_time, digits=4), "s)\n"; color = :red)
                failed += 1
            end
        catch exceptionz
            printstyled("[fail] exception during ∫( ", tuple[1], " )d", tuple[3], " : ", exceptionz, "\n"; color=:magenta)
            failed += 1
        end
        
    end

    testfile_time = sum(times)
    avg_time = testfile_time / length(data)
    max_time = maximum(times)
    min_time = minimum(times)
    
    println("$failed/$(length(data)) tests failed in ", relpath(path))
    println("Total=$(round(total_time, digits=3))s, Avg=$(round(avg_time, digits=4))s, Min=$(round(min_time, digits=4))s, Max=$(round(max_time, digits=4))s\n\n\n")

    return (length(data), testfile_time, failed)
end

@variables x a b c d e n

testset_paths = [ 
"test_files/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl"
# "test_files/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl"
# "test_files/0 Independent test suites/Bronstein Problems.jl"
]

_ = integrate(sin(x),x;verbose=false) # warming up
println("About to test SymbolicIntegration.jl with ", length(testset_paths), " test sets")

# analytics for all the testsets
total_tests = 0
total_failed = 0
total_time = 0

for path in testset_paths
    tmp = test_from_file(joinpath(@__DIR__,path))

    global total_tests += tmp[1]
    global total_time += tmp[2]
    global total_failed += tmp[3]
end

println("="^80)
println("="^80)
println("="^80)
println("$total_failed/$total_tests tests failed in all testsets")
println("Total=$(round(total_time, digits=3))s, Avg=$(round(total_time / total_tests, digits=4))s\n")


@test total_failed == 0