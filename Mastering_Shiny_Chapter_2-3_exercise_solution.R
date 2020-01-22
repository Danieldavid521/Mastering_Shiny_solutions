
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    sliderInput("num1", "Pick A number", value = 50, min = 0, max = 100),
    textOutput("num1"),
    sliderInput("num2", "Pick A number", value = 50, min = 0, max = 100),
    textOutput("num2"),
    
    textOutput("total")
)

server <- function(input, output, session) {
    output$num1  <- renderText({
        paste0("Your selected input is ", input$num1, "!")
    })
    
    output$num2  <- renderText({
        paste0("Your selected input is ", input$num2, "!")
    })
    
    output$total <- renderText({paste0("The product of the two selected numbers is ", input$num1 * input$num2)})
}

# Run the application 
shinyApp(ui = ui, server = server)
