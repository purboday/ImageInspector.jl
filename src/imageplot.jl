# /src/imageplot.jl
using .Plots

export imageplot

imageplot(x; flip = true, kwargs...) =  imageplot(image(x; flip); kwargs...)

function imageplot(x, ind; flip = true, nrows = -1, ncols = -1, sep = 1, kwargs...)
    img = imagegrid(x, ind; flip, nrows, ncols, sep)
    return imageplot(img; kwargs...)
end

function imageplot(
    x::AbstractMatrix{<:Color};
    legend = false,
    axis = nothing,
    border = :none,
    kwargs...
)
    return plot(x; legend, axis, border, kwargs...)
end