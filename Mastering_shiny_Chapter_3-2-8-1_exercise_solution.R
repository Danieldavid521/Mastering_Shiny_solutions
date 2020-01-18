
#to keep things simple, I only generated the UI code, no server side code for now

library(shiny)



ui <- fluidPage(
    sliderInput("input_date", "Select Date", min= as.Date("2015-01-01"), max = as.Date("2015-07-01"), value = as.Date("2015-04-01"), timeFormat = "%F"),
    
)

server <- function(input, output, session) {
    
}
shinyApp(ui=ui, server=server)
