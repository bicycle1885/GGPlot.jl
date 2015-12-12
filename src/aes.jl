immutable Aesthetic
    x::Symbol
    y::Symbol
end

function Aesthetic(kwargs::Dict)
    return Aesthetic(kwargs[:x], kwargs[:y])
end

function aes(;kwargs...)
    return Aesthetic(Dict(kwargs))
end
