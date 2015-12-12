using GGPlot
using RDatasets

diamonds = dataset("ggplot2", "diamonds")
g = ggplot(diamonds, aes(x=:Carat, y=:Price)) + geom_point()
display(g)
sleep(20)
