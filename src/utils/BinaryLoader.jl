function open_binary(file_path :: String)
    return open(file_path, "r")
end

function unpack_stream_with_type_and_number_of_elements(io :: IOStream, ::Type{T}, n :: Float64)
    result = Array{T, 1}(undef, n)

    for i in eachindex(result)
        result[i] = read(io, T)
    end
    close(io)
    return result
end

function load_binary_from_file_path(file_path :: String)
    @info "location of the binary file:"
    @info file_path
    io = open_binary(file_path)
    n = read(io, Float64)
    nt = read(io, Float64)

    type_name = Array{Char}(undef, nt)

    for i in eachindex(type_name)
        type_name[i] = read(io, Char)
    end

    # Type
    T = eval(Symbol(String(type_name)))
    return unpack_stream_with_type_and_number_of_elements(io, T, n)
end

