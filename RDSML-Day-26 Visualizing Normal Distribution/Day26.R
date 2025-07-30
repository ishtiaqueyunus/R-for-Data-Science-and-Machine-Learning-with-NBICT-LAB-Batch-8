# Installing the visualize package
# install.packages("visualize")
library(visualize)

# Visualize normal distribution
pnorm(-1.96)
visualize.norm(stat = -1.96)
visualize.norm(stat = 1.96, section = "upper")
visualize.norm(stat = c(-1.96, 1.96), section = "bounded")
