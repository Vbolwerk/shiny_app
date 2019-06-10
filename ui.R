library(shiny)

shinyUI(fluidPage(
  headerPanel("Get the hospitals in your state, by Vincent Bolwerk"),
  mainPanel(
    h3("Hospitals in your state. Search by state or any other search term!"),
    dataTableOutput('dataTable')
  )
))
