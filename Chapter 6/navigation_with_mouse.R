# Adapted from https://github.com/JohnCoene/nter
library(nter)
library(shiny)

ui <- fluidPage(
  # Setting a text input and a button
  textInput("text", ""),
  # This button will be clicked when 'Enter' is pressed in 
  # the textInput text
  actionButton("send", "Do not click hit enter"),
  verbatimTextOutput("typed"),
  # define the rule
  nter("send", "text") 
)

server <- function(input, output) {
  
  r <- reactiveValues()
  
  # Define the behavior on click
  observeEvent( input$send , {
    r$printed <- input$text
  })
  
  # Render the text
  output$typed <- renderPrint({
    r$printed
  })
}

shinyApp(ui, server)