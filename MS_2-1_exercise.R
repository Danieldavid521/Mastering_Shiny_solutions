
library(shiny)

ui <- fluidPage(
    name <- textInput("name", "What's your name?"),
    textOutput("greeting")

)
server <- function(input, output){
    
  output$greeting <-  renderText({
        paste0("Hello ", input$name)
    })
}

shinyApp(ui=ui,server=server)
