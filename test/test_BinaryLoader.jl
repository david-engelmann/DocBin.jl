include("../src/utils/BinaryLoader.jl")
using Test

@testset "Loading From Binary" begin
    @info "Test loading from a binary file"
    test_path = "test/assets/test_doc_bin.spacy"
    @test isa(test_path, String)
    result = load_binary_from_file_path(test_path)
    @info "post load_binary_from_file"
    @info result
end
