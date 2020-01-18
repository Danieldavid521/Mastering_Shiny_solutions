library(shiny)

datasets <- data(package = "ggplot2")$results[, "Item"]

ui <- fluidPage(
    textInput("userinput", "", placeholder = "Your name")
    
)

server <- function(input, output, session) {
    
}
shinyApp(ui=ui, server=server)
