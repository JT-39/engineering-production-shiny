library(shinipsum)
library(ggplot2)

random_ggplot() + 
  labs(title = "Random plot") 

# Other Shinipsum functions
random_table(nrow = 3, ncol = 3)

random_print(type = "model")

random_ggplotly()
