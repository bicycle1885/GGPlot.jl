type GeomPoint <: AbstractGeom
    data::DataFrame
    aes::Aesthetic

    function GeomPoint()
        return new()
    end
end

function geom_point()
    return GeomPoint()
end

x_minimum(geom::GeomPoint) = minimum(geom.data[geom.aes.x])
x_maximum(geom::GeomPoint) = maximum(geom.data[geom.aes.x])
y_minimum(geom::GeomPoint) = minimum(geom.data[geom.aes.y])
y_maximum(geom::GeomPoint) = maximum(geom.data[geom.aes.y])

# GR backend
function plotlayer(geom::GeomPoint)
    x = geom.data[geom.aes.x]
    y = geom.data[geom.aes.y]
    markertype = GR.MARKERTYPE_SOLID_CIRCLE
    setmarkertype(markertype)
    setmarkersize(1)
    setmarkercolorind(2)
    polymarker(x, y)
    return nothing
end
