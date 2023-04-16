function load_binary_from_file(file_path :: String)
    @info "location of the binary file:"
    @info file_path
    return read(file_path, Float64)
end
