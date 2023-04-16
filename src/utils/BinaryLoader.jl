function open_binary(file_path :: String)
    return open(file_path, "r")
end

function load_binary_from_file_path(file_path :: String)
    @info "location of the binary file:"
    @info file_path
    io = open_binary(file_path)
    n = read(io, Float64)
    nt = read(io, Float64)
    @info "n:"
    @info n
    @info "nt:"
    @info nt
    return n, nt
end

