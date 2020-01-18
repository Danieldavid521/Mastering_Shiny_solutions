library(shiny)

ui <- fluidPage(
fluidRow(
    splitLayout(cellWidths = c("50%", "50%"),  plotOutput("plot1"),plotOutput("plot2")))
)
server <- function(input, output, session) {
    output$plot1 <- renderPlot(plot(1:5))
    output$plot2 <- renderPlot(plot(1:5))
}
shinyApp(ui=ui, server=server)

# used https://stackoverflow.com/questions/34384907/how-can-put-multiple-plots-side-by-side-in-shiny-r
# to find a way to plot multiple plots side by side, was a little but more challenging than I thought
