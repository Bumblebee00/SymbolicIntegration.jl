using SymbolicIntegration
using Test
using Symbolics

# Parse command line arguments
verbs = false  # default value
if length(ARGS) > 0
    if ARGS[1] == "--verbose" || ARGS[1] == "-v"
        verbs = true
    else
        println("Unknown argument: ", ARGS[1])
        exit(1)
    end
end


@variables x a b c d e n

# testfile format is a julia file with a array called data, that contains tuples of four:
# (integrand = ..., result = ..., integration_var = ..., mistery_val = ...)
test1_1_1_2 = joinpath(@__DIR__, "test_files/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.jl")
test1_1_1_3 = joinpath(@__DIR__, "test_files/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl")
test_0_Bronstein = joinpath(@__DIR__, "test_files/0 Independent test suites/Bronstein Problems.jl")
easy = joinpath(@__DIR__, "test_files/easy_tests.jl")
testset_paths = [ easy ]

println("About to test SymbolicIntegration.jl with ", length(testset_paths), " test sets")

# analytics for all the testsets
total_total = 0
total_n_failed = 0
total_total_time = 0


for path in testset_paths
    if !isfile(path)
        error("Test set file not found: ", relpath(path))
    end
    println("Loading test data from ", relpath(path), "...")
    include(path)

    _ = integrate(x,x) # warming up
    println("Testing ", length(data), " integrals...") # data is the array definied in the test file

    # analytics for this testeset
    n_failed = 0
    times = Float64[]
    
    for (i, test) in enumerate(data)
        try
            elapsed_time = @elapsed computed_result = integrate(test.integrand, test.integration_var;verbose = verbs)# agginugere symbolic = true?
            push!(times, elapsed_time)
            
            if isequal(simplify(computed_result  - test.result), 0)# also check computed_result[2]=0?
                printstyled("[ ok ]∫( ", test.integrand, " )d", test.integration_var, " = ", test.result, " (", round(elapsed_time, digits=4), "s)\n"; color = :green)
            else
                printstyled("[fail]∫( ", test.integrand, " )d", test.integration_var, " = ", test.result, " but got ", computed_result, " (", round(elapsed_time, digits=4), "s)\n"; color = :red)
                n_failed += 1
            end
        catch exceptionz
            printstyled("[fail] exception during ∫( ", test.integrand, " )d", test.integration_var, " : ", exceptionz, "\n"; color=:magenta)
            n_failed += 1
        end
        
    end

    total_time = sum(times)
    avg_time = total_time / length(data)
    max_time = maximum(times)
    min_time = minimum(times)
    
    println("$n_failed/$(length(data)) tests failed in ", relpath(path))
    println("Total=$(round(total_time, digits=3))s, Avg=$(round(avg_time, digits=4))s, Min=$(round(min_time, digits=4))s, Max=$(round(max_time, digits=4))s\n\n\n")

    global total_total += length(data)
    global total_total_time += total_time
    global total_n_failed += n_failed
end

println("="^80)
println("="^80)
println("="^80)
println("$total_n_failed/$total_total tests failed in all testsets")
println("Total=$(round(total_total_time, digits=3))s, Avg=$(round(total_total_time / total_total, digits=4))s\n")
