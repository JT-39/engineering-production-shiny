# This function generates a plot for an 
# internal matrix, and takes a palette as
# parameter so that we can display the 
# plot using various palettes, as the
# palette should be a function
with_palette <- function(palette) {
  x <- y <- seq(-8 * pi, 8 * pi, len = 40)
  r <- sqrt(outer(x^2, y^2, "+"))
  z <- cos(r^2) * exp(-r / (2 * pi))
  filled.contour(
    z,
    axes = FALSE,
    color.palette = palette,
    asp = 1
  )
}

# Visualising above matrix with different palettes
with_palette(matlab::jet.colors)

with_palette(viridis::viridis)



# Using dichromat to simulate colour-blindness
library(dichromat)

# Simulation of deuteranopia with jet.colors and viridis
# Jet colours
deutan_jet_color <- function(n){
  cols <- matlab::jet.colors(n)
  dichromat(cols, type = "deutan")
}
with_palette( deutan_jet_color )

# Viridis
deutan_viridis <- function(n){
  cols <- viridis::viridis(n)
  dichromat(cols, type = "deutan")
}
with_palette( deutan_viridis )


# Simulation of protanopia with jet.colors and viridis
# Jet colours
protan_jet_color <- function(n){
  cols <- matlab::jet.colors(n)
  dichromat(cols, type = "protan")
}
with_palette( protan_jet_color )

# Viridis
protan_viridis <- function(n){
  cols <- viridis::viridis(n)
  dichromat(cols, type = "protan")
}
with_palette( protan_viridis )

# Simulation of tritanopia with jet.colors and viridis
# Jet colours
tritan_jet_color <- function(n){
  cols <- matlab::jet.colors(n)
  dichromat(cols, type = "tritan")
}
with_palette( tritan_jet_color )

# Viridis
tritan_viridis <- function(n){
  cols <- viridis::viridis(n)
  dichromat(cols, type = "tritan")
}
with_palette( tritan_viridis )
