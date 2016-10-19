library(shiny)
library(ggmap)
library(mapview)
library(leaflet)
library(sp) #required for spatial data frame

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
   
    #load(file="~map.rda")
    uow=c(lat=-34.405404, lon=150.87843)
    ubc=c(lat=49.93988, lon=-119.39557)
    uoa=c(lat=53.52322, lon=-113.52632)
    
    coord=data.frame(Longitude=c(150.87843,-119.39557,-113.52632, -122.0607867),
                     Latitude=c(-34.405404,49.93988,53.52322, 37.3868734))
    
    edu_df=data.frame(Institution=c("University of Wollongong",
                                    "University of British Columbia",
                                    "University of Alberta",
                                    "Coursera"),
                      GraduatingYear=as.factor(c(2009, 2013, 2010,2015)),
                      Degree=c("Bacherlor of Science, Study Abroad",
                               "Master of Applied Science in Mechanical Engineering",
                               "Bachelor of Science in Mechanical Engineering",
                               "Data Science Specialization, Remote [ONLINE]"),
                      Thesis=c("-",
                               "Translational Visual Servoing Control of Quadrotor Helicopters",
                               "A Robotic Soil Sample Collector for Tailings Ponds",
                               "-"),
                      stringsAsFactors = FALSE)
    
    Education=SpatialPointsDataFrame(coords=coord,data= edu_df,
                                     proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
    
    mapviewOptions(basemaps = c("OpenStreetMap", "Esri.WorldImagery"))
    
    p=mapview(Education,zcol="GraduatingYear",
              color = c("gold1", "orange2","red","darkred"),
              burst=FALSE,
              legend=TRUE)#,
  
              #popup = popup(Education, zcol = c("GraduatingYear", "Degree"))


    output$edumap=renderLeaflet( {p@map})
})
