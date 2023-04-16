include("../models/DocBin.jl")
using JSON3
using MsgPack
using GZip

function open_binary(file_path :: String)
    return gzopen(file_path, "r")
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
    @info unpack(io)
    result = JSON3.read(io)
    @info JSON3.prettY(result)
    return result
#    n = read(io, Int64)
#    nt = read(io, Int64)
#    @info "set Array to dim of nt"
#    @info nt
#
#    type_name = Array{Char}(undef, nt)
#
#    for i in eachindex(type_name)
#        type_name[i] = read(io, Char)
#    end
#
#    # Type
#    T = eval(Symbol(String(type_name)))
#    return unpack_stream_with_type_and_number_of_elements(io, T, n)
end

