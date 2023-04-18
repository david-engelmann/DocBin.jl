include("../src/api/FileIngestion.jl")
using Test


@testset "----Ping----" begin
    @test ping() == "love"
end