#Using the following numeric input box the user can enter any value between 0 and 1000. 
#What is the purpose of the step argument in this widget?

library(shiny)

ui = fluidPage(
    numericInput("number", "Select a value", value = 150, min = 0, max = 1000, step = 50)
)

server = function(input, output) {
    
}
shinyApp(ui=ui, server=server)

#the step argument allows the user to use the up and down arrows with increments of the step value
