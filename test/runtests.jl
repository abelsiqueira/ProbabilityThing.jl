using ProbabilityThing
using Test

@testset "Testing basic stuff" begin
    for distribution in [
        Normal()
    ]
        @testset "For distribution $distribution" begin
            @test pdf(distribution, 0.0) > 0
            @test cdf(distribution, Inf) ≈ 1.0
            @test isapprox(cdf(distribution, Inf), 1.0) # same as above
        end
    end
end
