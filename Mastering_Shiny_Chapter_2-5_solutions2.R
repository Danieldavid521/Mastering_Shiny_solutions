library(ggplot2)
library(shiny)

#datasets <- data(package = "ggplot2")$results[, "Item"]

ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  plotOutput("table")
)

server <- function(input, output, session) {

      output$summary <- renderPrint({
        dataset <- get(input$dataset, "package:datasets")
        summary(dataset)
      })
      
      output$table <- renderPlot({
        dataset <- get(input$dataset, "package:datasets")
        plot(dataset)
      })
    
  
}
shinyApp(ui=ui, server=server)
