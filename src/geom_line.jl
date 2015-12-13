type GeomLine <: AbstractGeom
    data::DataFrame
    aes::Aesthetic

    function GeomLine()
        return new()
    end
end

function geom_line()
    return GeomLine()
end

x_minimum(geom::GeomLine) = minimum(geom.data[geom.aes.x])
x_maximum(geom::GeomLine) = maximum(geom.data[geom.aes.x])
y_minimum(geom::GeomLine) = minimum(geom.data[geom.aes.y])
y_maximum(geom::GeomLine) = maximum(geom.data[geom.aes.y])

# GR backend
function plotlayer(geom::GeomLine)
    x = geom.data[geom.aes.x]
    y = geom.data[geom.aes.y]
    setlinewidth(2)
    setlinecolorind(2)
    polyline(x, y)
    return nothing
end
