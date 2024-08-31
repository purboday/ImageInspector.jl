using Revise
using ImageInspector, MLDatasets, Plots
# Plot grayscale and color
# X1 = MLDatasets.FashionMNIST(Float64, :train)[:][1];
# X2 = MLDatasets.CIFAR10(Float64, :train)[:][1];

# x1 = selectdim(X1, ndims(X1), 1)
# x2 = selectdim(X2, ndims(X2), 1)

# plot(
#     plot(image(x1)),
#     plot(image(x2));
#     axis = nothing,
#     border = :none
# )

# Plot multiple images
X = MLDatasets.FashionMNIST(Float64, :train)[:][1];

plot(imagegrid(X, 1:10; nrows = 2, sep = 2); axis = nothing, border = :none)