library(ggplot2)
library(shiny)

datasets <- data(package = "ggplot2")$results[, "Item"]

ui <- fluidPage(
    selectInput("dataset", "Dataset", choices = datasets),
    verbatimTextOutput("summary"),
    tableOutput("plot")
   
)

server <- function(input, output, session) {
    dataset <- reactive({
        get(input$dataset, "package:ggplot2")
    })
    output$summary <- renderPrint({
        summary(dataset())
    })
    output$plot <- renderTable({
        input$dataset
    })
}
shinyApp(ui=ui, server=server)
