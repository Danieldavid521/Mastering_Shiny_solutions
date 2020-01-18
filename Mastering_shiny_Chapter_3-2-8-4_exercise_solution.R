library(shiny)

    ui = fluidPage(
        sliderInput("user_input", "watch the automation",min = 0, max = 100, value  = 5,step = 5,animate = TRUE)
    )
    
    server = function(input, output) {
       
    }
shinyApp(ui=ui, server=server)
