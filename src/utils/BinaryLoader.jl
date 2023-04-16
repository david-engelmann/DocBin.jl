function load_binary_from_file(file_path :: String)
    @info "location of the binary file:"
    @info file_path
    results = Array{Float64}
    return read!(file_path, results)
end
