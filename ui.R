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
                style = "font-family: 'times'")
             #br(),br(),br(),
             #h4("Highlights")
             
    ),
    tabPanel(title="Education", 
             #Education code here
             h3("Education"),
             p("(Click on a point for more information)"),
             leafletOutput(outputId="edumap")
             
    ),
    tabPanel(title="Experience",
             
             #RockLake Lodge
             br(),
             tags$div(
               tags$div( 'style'="width:80px; float:left ;text-align: center",
                         tags$img(src = "rock_lake.png", height = "60px")
               ),
               tags$div( 'style'="margin-left: 90px",
                         h3("General Manager, Operations"),
                         h5("Rock Lake Lodge, 2014")
               )
             ),
             tags$div('style'="clear: both"),
             tags$ul(tags$li("Responsible for guests and day-to-day operations at a remote wilderness hotel in Rock Lake Provincial Park."),
                     tags$li("Ensured adequate inventory levels and performed maintenance of critical systems."),
                     tags$li("Guided guests on hiking and fishing trips to enrich their experience.")
             ),
             br(),
             
             #Ulterra
             tags$div(
               tags$div( 'style'="width:75px; float:left;text-align: center",
                         tags$img(src = "ulterra.png", width = "75px")
               ),
               tags$div( 'style'="margin-left: 90px",
                 h3("Downhole Tool Designer"),
                 h5("Ulterra Drilling Technologies, 2015-2016")
               )
             ),
             tags$div('style'="clear: both"),
             tags$ul(tags$li("Named inventor on two patentable mud motor transmission designs that increase torque capacity and reduce vibration (currently in the provisional patent stage)."),
                     tags$li("Designed, analyzed, and destructively tested mud motor transmission components."),
                     tags$li("Quantified the effectiveness of downhole tools by using data science principles on data from downhole data loggers and bit runs.")
                     ),
             
             #UBC
             br(),
             tags$div(
               tags$div( 'style'="width:80px; float:left ;text-align: center",
                         tags$img(src = "ubc.png", height = "60px")
               ),
               tags$div( 'style'="margin-left: 90px",
                         h3("Sessional Lecturer"),
                         h5("University of British Columbia, 2014")
               )
             ),
             tags$div('style'="clear: both"),
                      tags$ul(tags$li("Responsible for preparing and teaching ENGR315 \"Fundamentals of Control Systems\" to a class of 105 third-year mechanical and electrical engineering students"),
                              tags$li("Taught the Matlab and Simulink programming languages to new users.")
             ),
             
             #TTS
             br(),
             tags$div(
               tags$div( 'style'="width:80px; float:left ;text-align: center",
                         tags$img(src = "tts.png", height = "60px")
               ),
               tags$div( 'style'="margin-left: 90px",
                         h3("Design Engineer"),
                         h5("TTS Energy Canada, 2010")
               )
             ),
             tags$div('style'="clear: both"),
             tags$ul(tags$li("Designed and created technical drawings for top drive components and a test station."),
                     tags$li("Worked with a multi-disciplinary team to organize placement of hydraulic and electrical components on a high pressure unit skid."),
                     tags$li("Worked with shop floor personnel and suppliers to troubleshoot and resolve problems, which arose from tight delivery schedules.")
             ),
             
             #Wenzel
             br(),
             tags$div(
               tags$div( 'style'="width:80px; float:left ;text-align: center",
                         tags$img(src = "wzl.png", width = "80px")
               ),
               tags$div( 'style'="margin-left: 90px",
                         h3("Engineering Student"),
                         h5("Wenzel Downhole Tools, 2006-2010")
               )
             ),
             tags$div('style'="clear: both"),
             tags$ul(tags$li("Developed a Drilling Jar Placement Program for downhole tools, which has been used to optimize jar placement within the bottom hole assembly."),
                     tags$li("Analyzed reports to quantify reliability of current Wenzel Products."),
                     tags$li("Responsible for operating the manual lathe, band saw and turret lathe.")
             )
    ),
     

    tabPanel(title="Technical Skills", 
             h3("3")
    ),
    tabPanel(title="Contact Information", 
             h3("3")
    )
  )
  
  
)
