"""
A flavor of TOML for more general data-serialization,
    including support for 'null' values, infinities, and NaN's.
Also supports JSON3-esque serialization of data structures, using `StructTypes`.
"""
module WOML

using Dates
using TOML, StructTypes

include("toml-type.jl")
include("unions.jl")
include("converter.jl")



"
Parses a TOML string into the given type.
The type defaults to `Dict{String, Any}`, same as the original TOML package.
"
@inline read(toml::AbstractString, T...) = read(IOBuffer(toml, write=false), T...)

function read(io::IO, T = Dict{String, Any})
    struct_type = StructTypes.StructType(T)

end

export CM_Read, CM_Write

end # module
