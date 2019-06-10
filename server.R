library(shiny)

# Load data
setwd("C:/Users/VBolwerk/Documents/Personal development/R course/part_9/shiny_app/shiny_app")
data <-read.csv("hospital-data.csv")

shinyServer(function(input, output) {
  display_table <- reactive({
    t <- reactive(paste0("data[data$Emergency.services==", input$emergency, "]"))
    
    # Read the RCA matrix
    long_table=data
    
    return(long_table)
  })
  
  
  output$dataTable <- renderDataTable({
    display_table()
  })
})

