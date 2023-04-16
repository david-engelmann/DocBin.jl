include("../src/api/TextIngestion.jl")
using Test


@testset "----Ping----" begin
    @test ping() == "love"
end