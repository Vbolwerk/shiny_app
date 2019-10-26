library(shiny)
library(ggplot2)


# Load data
setwd("C:/Users/VBolwerk/Documents/sourcetree/shiny_app")
data <-read.csv("hospital-data.csv")
drops <- c("Address.2","Address.3")
data<-data[ , !(names(data) %in% drops)]

shinyServer(function(input, output) {
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- data
    if (input$Hospital.Name != "All") {
      data <- data[data$Hospital.Name == input$Hospital.Name,]
    }
    if (input$Address.1 != "All") {
      data <- data[data$Address.1 == input$Address.1,]
    }
    if (input$Emergency.Services != "All") {
      data <- data[data$Emergency.Services == input$Emergency.Services,]
    }
    data
  }))
  
})