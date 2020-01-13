#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
    textOutput("num2")
)

server <- function(input, output, session) {
    output$num2 <- renderText({
      paste0("Your selected input * 5 is", input$num2, "!")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
