include("../models/DocBin.jl")
using JSON3
using MsgPack
using GZip

function open_binary(file_path :: String)
    return open(file_path, "r")
end

function unpack_stream_with_type_and_number_of_elements(io :: IOStream, T :: Type, n :: Int64)
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
    @info "io:"
    @info io
    n = MsgPack.unpack(io)
    @info "set Array to dim of nt"
    @info "n:"
    @info n

    type_name = Array{Char}(undef, n)
    @info "type one pt 1:"
    @info type_name

    for i in eachindex(type_name)
        type_name[i] = read(io, Char)
    end
    @info "type one pt 2:"
    @info type_name

    # Type
    T = eval(Symbol(String(type_name)))
    return unpack_stream_with_type_and_number_of_elements(io, T, n)
end

