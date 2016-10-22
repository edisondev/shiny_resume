library(shiny)
library(shinythemes)
library(leaflet)

# Define UI for miles per gallon application
fluidPage(theme = shinytheme("spacelab"),
  
  # Header Panel
  titlePanel("Nikolai Kummer", windowTitle = "Nikolai Kummer, E.I.T."),
  em("\"Mechanical engineer with background in robotics and data science\""),
  p( a("email",href="mailto:nikolai.kummer@gmail.com"), " | " , a("website",href="http://edisondev.net/")," | " , a("YouTube",href="https://www.youtube.com/channel/UC2P7h5Vik9tLafPQ2hlKVLA")),
  
  
  #Main Body with Navigation Panel
  navlistPanel(
    tabPanel(title="Summary", 
             #Education code here
             h2("Nikolai Kummer, E.I.T."),
             em("\"A highly qualified engineering professional with a background in design, analysis and testing of mechanical and electro-mechanical tools and components. Background in robotics, data science, and oil-field technologies. Personable team player with excellent communication skills. Skilled lecturer and author of several engineering publications.\"",
                style = "font-family: 'times'"
                ),
             br(),br(),br(),
             h3("What I do:"),
             tags$ul('style'="list-style-type:none",
                     tags$li("Mechanical Engineering Design"),
                     tags$li("Simulation"),
                     tags$li("Programming"),
                     tags$li("Signal Analysis"),
                     tags$li("Electromechanical Systems")
             ),
             
             br(),
             h3("Achievement Highlights:"),
             tags$ul('style'="list-style-type:none",
               tags$li("2 preliminary patents for downhole tool transmisison"),
               tags$li("6 Published articles in the field of robotics ")
             )
             
             
             
    ),
    tabPanel(title="Education", 
             #Education code here
             h3("Education"),
             p("(Click on a point for more information)"),
             leafletOutput(outputId="edumap")
             
    ),
    tabPanel(title="Experience",
             h4("Types of Experience"),
             tags$div('style'="width:250px; background:#FAFAFA; border-style: solid; border-color:#BBBBBB ; border-width: 1px ; padding: 10px",
                      tags$img(src="tag_eng_design.png", height="20px"),
                      "Engineering Design",
                      tags$img(src="tag_programming.png", height="20px"),
                      "Programming",
                      tags$img(src="tag_other.png", height="20px"),
                      "Other"
                      ),
             br(),
             
             #RockLake Lodge
             br(),
             tags$div(
               tags$div( 'style'="width:80px; float:left ;text-align: center",
                         tags$img(src = "rock_lake.png", height = "60px")
               ),
               tags$div( 'style'="margin-left: 90px",
                         h3("General Manager, Operations"),
                         h5("Rock Lake Lodge, 2016")
               )
             ),
             tags$img(src="tag_other.png", height="20px"),
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
             tags$img(src="tag_eng_design.png", height="20px"),tags$img(src="tag_programming.png", height="20px"),
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
             tags$img(src="tag_programming.png", height="20px"),tags$img(src="tag_other.png", height="20px"),
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
             tags$img(src="tag_eng_design.png", height="20px"),
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
             tags$img(src="tag_eng_design.png", height="20px"),tags$img(src="tag_programming.png", height="20px"),
             tags$div('style'="clear: both"),
             tags$ul(tags$li("Developed a Drilling Jar Placement Program for downhole tools, which has been used to optimize jar placement within the bottom hole assembly."),
                     tags$li("Analyzed reports to quantify reliability of current Wenzel Products."),
                     tags$li("Responsible for operating the manual lathe, band saw and turret lathe.")
             )
    ),
     

    tabPanel(title="Professional Qualifications", 
             h4("Technical Skills"),
             tags$div('class'="row",'style'="width=100%",
               tags$div('class'="col",'style'="width:45% ;float:left;  margin-left: 2.5%",#Outer div
                        tags$u("Engineering Design:"),
                        tags$ul('style'="list-style-type:none",
                                tags$li(tags$img(src = "ico_solidworks.png", width = "24px"), "Solidworks"),
                                tags$li(tags$img(src = "ico_inventor.png", width = "24px"), "Autodesk Inventor"),
                                tags$li(tags$img(src = "ico_office.png", width = "24px"), "Microsoft Office")
                        )
               ),
               tags$div('class'="col",'style'="width:45%;float:left; margin-left: 2.5%",#Outer div
                        tags$u("Programming:"),
                        tags$ul('style'="list-style-type:none",
                                tags$li(tags$img(src = "ico_r.png", width = "24px"), "R"),
                                tags$li(tags$img(src = "ico_matlab.png", width = "24px"), "Matlab"),
                                tags$li(tags$img(src = "ico_simulink.png", width = "24px"), "Simulink"),
                                tags$li(tags$img(src = "ico_python.png", width = "24px"), "Python"),
                                tags$li(tags$img(src = "ico_arduino.png", width = "24px"), "Arduino")
                        )
               )
             ),
             
             
             br(),
             
             
             h4("Recognition & Awards"),
             tags$ul(tags$li('type'="square","Practical Teaching Certification, University of British Columbia, Vancouver, BC - ",tags$em("2013")),
                     tags$li('type'="square","1st place: TrebEUSchet 2013 Trebuchet building competition ",tags$em("2013")),
                     tags$li('type'="square","Teaching Assistant and Tutor Excellence Award, University of British Columbia, Vancouver, BC -",tags$em("2012")),
                     tags$li('type'="square","Mechatronics Club Excellence Award, University of British Columbia, Vancouver, BC -",tags$em("2012"))
             ),
             br(),

             h4("Memberships/Affiliation"),
             tags$ul(tags$li('type'="square","Association of Professional Engineers and Geoscientists of Alberta (APEGA) - ",tags$em("2005-Present")),
                     tags$li('type'="square","Robot Operating System (ROS) Edmonton - Organizer and Speaker - ",tags$em("2015-Present")),
                     tags$li('type'="square","Institute of Electrical and Electronics Engineers (IEEE) - 2012")
             ),
             br(),
             
             h4("Academic Activities"),
             tags$ul(tags$li('type'="square",tags$u("Teaching Assistantships, UBC, 2011-2013:"),
                             tags$ul(
                               tags$li("ENGR 256 - Statistics"),
                               tags$li("ENGR 315 - Matlab Programming"),
                               tags$li("ENGR 477 - Experiments and Report Writing")
                             )
                      ),
                     tags$li('type'="square",tags$u("Speaking Invitations"),
                             tags$ul(
                               tags$li("Programming in Matlab, UBC, 2012")
                             )
                     )
                     
                    ),
             br(),
             
             h4("Presentations & Publications"),
             #'type'="square",
             tags$ol(tags$li("Kummer, Nikolai, and Homayoun Najjaran. \"Adaboost. MRT: Boosting regression for multivariate estimation.\" Artificial Intelligence Research 3.4 (2014); p.64."),
                     tags$li("Kummer, N., Firouzi, H. & Najjaran, H. (2015). \"Autonomous UAV Controlled Collision Landing via eye-in-hand Visual Servoing. Canadian Aeronautics and Space Journal\" [SUBMITTED]."),
                     tags$li("N. Kummer, C. Jee, J. Garbowski, E. Nowak, H. Najjaran, J. Richards, A. Suleman \"Design and Development of the Hardware for a Vision-based UAV Autopilot\", CSME Conference 2014, Toronto, Ontario, Canada."),
                     tags$li("D. Kadish, N. Kummer, A. Dulic, H. Najjaran, \"The Empathy Machine - Generated Music to Augment Empathic Interactions\", Entertainment Computing-ICEC 2012, 461-464."),
                     tags$li("D. Kadish, N. Kummer, A. Dulic, H. Najjaran, \"The Empathy Machine,\" Systems, Man, and Cybernetics (SMC), 2012 IEEE International Conference on vol., no., pp.2265, 2271, 14-17 Oct. 2012."),
                     tags$li("N. Kummer, H. Firouzi, D. Jacobs, H. Najjaran \"Autonomous UAV Landing via eye-in-hand Visual Servoing\", presented at Unmanned Systems Canada Conference 2011, Halifax, Nova Scotia, Canada.")
             )
    ),
    
    
                     
    tabPanel(title="Contact Information",
             h3("Get in touch with me at:"),
             
             tags$div('style'="height:75%",
               tags$a(href="http://www.edisondev.net/",
                 tags$div( 'style'="width:45%;height:45%; float:left; border:solid ;border-color:#DDDDDD; margin-left: 2.5%",
                           tags$img(src = "edisondev_link.png", width = "100%"),
                         p('style'="color:#666666",em("http://edisondev.net/"),br(),"Personal website devoted to information and tutorials about microcontrollers and singleboard computers.")
                         )
                 ),
               tags$a(href="https://www.youtube.com/channel/UC2P7h5Vik9tLafPQ2hlKVLA",
                      tags$div( 'style'="width:45%; height:75%; float:left; border:solid ;border-color:#DDDDDD; margin-left: 2.5%",
                                tags$img(src = "yt_link.png", width = "100%"),
                                p('style'="color:#666666",em("Nikolai K."),br(),"YouTube channel devoted to videos about programming and robotics tutorials with a over 250,000 combined views.")
                      )
               ),
               br(),
               div('style'="width:100%; height:75%; float:left",
                   tags$a(href="mailto:nikolai.kummer@gmail.com",
                          tags$div( 'style'="width:45%; height:75%;  border:solid ;border-color:#DDDDDD; margin-left: 27.5%;margin-top: 2.5% ",
                                    tags$img(src = "email_link.png", width = "100%"),
                                    p('style'="color:#666666; text-align:center",em("nikolai.kummer@gmail.com"))
                          )
                   )
               )
               
               
             )
    )
  )
  
  
)
