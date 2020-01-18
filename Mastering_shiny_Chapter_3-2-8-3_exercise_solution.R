library(shiny)


    ui = fluidPage(
        selectInput("state", "Choose a City:",
                    list(`Kansas` = list("Overland Park", "Topeka", "Wichita"),
                         `Colorado` = list("Denver", "Boulder", "Colorado Springs"),
                         `Missouri` = list("St. Louis", "Clayton", "Columbia"))
        ),
        textOutput("result")
    )
    
    server = function(input, output) {
        output$result <- renderText({
            paste("You chose", input$state)
        })
    }
shinyApp(ui=ui, server=server)
