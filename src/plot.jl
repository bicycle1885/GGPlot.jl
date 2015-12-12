type Plot
    data::DataFrame
    aes::Aesthetic
    layers::Vector{AbstractLayer}
end

function ggplot(df::DataFrame, aes::Aesthetic)
    return Plot(df, aes, [])
end

function Base.(:+)(plot::Plot, layer::AbstractLayer)
    layer.data = plot.data
    layer.aes = plot.aes
    push!(plot.layers, layer)
    return plot
end
