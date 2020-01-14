#excerise solutions for the book https://mastering-shiny.org/


library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
    textOutput("num2")
)

server <- function(input, output, session) {
    output$num2 <- renderText({
        paste0("Your selected input * 5 is ", input$num2 * 5, "!")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
