library(shiny)
library(shinythemes)
library(leaflet)

# Define UI for miles per gallon application
fluidPage(theme = shinytheme("spacelab"),
  
  # Header Panel
  titlePanel("Nikolai Kummer", windowTitle = "Nikolai Kummer, E.I.T."),
  em("\"Mechanical engineer with background in robotics and data science\""),
  p( a("email",href="mailto:nikolai.kummer@gmail.com"), " | " , a("website",href="http://edisondev.net/")),
  
  
  #Main Body with Navigation Panel
  navlistPanel(
    tabPanel(title="Summary", 
             #Education code here
             h2("Nikolai Kummer, E.I.T."),
             em("\"A highly qualified engineering professional with a background in design, analysis and testing of mechanical and electro-mechanical tools and components. Background in robotics, data science, and oil-field technologies. Personable team player with excellent communication skills. Skilled lecturer and author of several engineering publications.\"",
                style = "font-family: 'times'"),
             br(),br(),br(),
             h4("Highlights")
             
    ),
    tabPanel(title="Education", 
             #Education code here
             h3("Education"),
             leafletOutput(outputId="edumap")
             
    ),
    tabPanel(title="Experience", 
             #Experience code here
             h3("test2")
    ),

    tabPanel(title="Technical Skills", 
             h3("3")
    ),
    tabPanel(title="Contact Information", 
             h3("3")
    )
  )
  
  
)
