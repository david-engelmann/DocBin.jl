include("../src/utils/BinaryLoader.jl")
using Test

@testset "Loading From Binary" begin
    @info "Test loading from a binary file"
    test_path = "test/assets/test_doc_bin.spacy"
    @test isa(test_path, String)
    n, nt = load_binary_from_file(test_path)
    @info "post load_binary_from_file"
    @info n
    @info nt
    @test isa(n, Float64)
    @test isa(nt, Float64)
end
