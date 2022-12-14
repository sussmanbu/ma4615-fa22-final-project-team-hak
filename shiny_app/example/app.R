#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
# 
#
# First, install and load the shiny package

data <- read.csv("./team_stats.csv")

ui <- shinyUI(fluidPage(
  selectInput("x_var", "Select the x variable:",
              choices  = c("Age","W", "L","PW", "PL","MOV", "SOS", "SRS", "ORtg", "DRtg", "NRtg", "Pace", "FTr", "X3PAr", "TS.")),
  selectInput("y_var", "Select the y variable:",
              choices =  c("Age","W", "L","PW", "PL","MOV", "SOS", "SRS", "ORtg", "DRtg", "NRtg", "Pace", "FTr", "X3PAr", "TS.")),
  plotOutput("plot")
))

server <- shinyServer(function(input, output) {
  plot_data <- reactive({
    data[, c(input$x_var, input$y_var)]
  })
  output$plot <- renderPlot({
    plot(plot_data()[,1], plot_data()[,2])
  })
})

# Run the app
shinyApp(ui = ui, server = server)
# runApp(shiny_app)
