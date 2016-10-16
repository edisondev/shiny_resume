library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Nikolai Kummer"),
  
  sidebarPanel(
    actionButton(inputId="eduButton", 
                 label="Education", 
                 width = '100%'),
    br(),
    actionButton(inputId="expButton", 
                 label="Experience", 
                 width = '100%'),
    br(),
    actionButton(inputId="sklButton", 
                 label="Skills", 
                 width = '100%'),
    width=4
    ),
  
  mainPanel(
    plotOutput(outputId="edumap")
    )
  
))
