library(shiny)


ui <- fluidPage(
    textInput("userinput", "", placeholder = "Your name")
    
)

server <- function(input, output, session) {
    
}
shinyApp(ui=ui, server=server)
