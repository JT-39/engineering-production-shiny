library(shiny)
library(shinyFeedback)

ui <- function(){
  tagList(
    # Attaching the {shinyFeedback} dependencies
    useShinyFeedback(),
    # Recreating our selectInput + plot from before
    selectInput(
      "species", 
      "Choose one or more species",
      choices = unique(iris$Species),
      multiple = TRUE, 
      selected = unique(iris$Species)[1]
    ), 
    plotOutput("plt")
  )
}

server <- function(
  input, 
  output, 
  session
){
  output$plt <- renderPlot({
    # If the length of the input is 0 
    # (i.e. nothing is selected),we show 
    # a feedback to the user in the form of a text
    # If the length > 0, we remove the feedback.
    if (length(input$species) == 0){
      showFeedbackWarning(
        inputId = "species",
        text = "Select at least one Species"
      )  
    } else {
      hideFeedback("species")
    }
    # req() allows to stop further code execution 
    # if the condition is not a truthy. 
    # Hence if input$species is NULL, the computation 
    # will be stopped here.
    req(input$species)
    plot(
      iris[ iris$Species %in% input$species, ]
    )
  })
}

shinyApp(ui, server)