library(shiny)
library(ggplot2)

# Load data
setwd("C:/Users/VBolwerk/Documents/sourcetree/shiny_app")
data <-read.csv("hospital-data.csv")
drops <- c("Address.2","Address.3")
data<-data[ , !(names(data) %in% drops)]
shinyUI(fluidPage(
  titlePanel("Get the hospitals in your state, by Vincent Bolwerk"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("Hospital.Name",
                       "Hospital Name:",
                       c("All",
                         unique(as.character(data$Hospital.Name))))
    ),
    column(4,
           selectInput("Address.1",
                       "Address:",
                       c("All",
                         unique(as.character(data$Address.1))))
    ),
    column(4,
           selectInput("Emergency.Services",
                       "Emergency Services:",
                       c("All",
                         unique(as.character(data$Emergency.Services))))
    )
  ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
))