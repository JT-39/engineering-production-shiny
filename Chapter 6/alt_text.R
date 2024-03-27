library(shiny)
library(magrittr)
ui <- function(){
  # Generating a UI with one plot
  tagList(
    plotOutput("plot") %>% 
      # Adding the `alt` attribute to our plot
      tagAppendAttributes(alt = "Plot of iris")
  )
}

server <- function(
    input, 
    output, 
    session
){
  # Generating the plot from the server side,
  # no modification here 
  output$plot <- renderPlot({
    plot(iris)
  })
}

shinyApp(ui, server)