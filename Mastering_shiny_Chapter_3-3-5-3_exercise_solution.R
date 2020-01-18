library(shiny)

ui <- fluidPage(
    dataTableOutput("table")
)
server <- function(input, output, session) {
    output$table <- renderDataTable(mtcars, options = list(lengthChange = FALSE,searching = FALSE, ordering = FALSE, PageLength = FALSE))
}

shinyApp(ui=ui, server=server)

