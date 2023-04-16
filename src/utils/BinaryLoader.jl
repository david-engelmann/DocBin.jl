function load_binary_from_file(file_path :: String)
    @info "location of the binary file:"
    @info file_path
    n = read(file_path, Float64)
    nt = read(file_path, Float64)
    @info "n:"
    @info n
    @info "nt:"
    @info nt
    @test isa(n, Float64)
    @test isa(nt, Float64)
end
