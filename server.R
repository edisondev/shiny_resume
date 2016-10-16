library(shiny)
library(ggmap)

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  output$edumap=renderPlot( { 
    load(file="~map.rda")
    uow=c(lat=-34.405404, lon=150.87843)
    ubc=c(lat=49.93988, lon=-119.39557)
    uoa=c(lat=53.52322, lon=-113.52632)
    
    edu_df=data.frame(Longitude=c(150.87843,-119.39557,-113.52632),
                      Latitude=c(-34.405404,49.93988,53.52322),
                      tcx=c(150,-130,-113.52632),
                      tcy=c(-20,40,65),
                      name=c("University of Wollongong, \n Mech. Eng. Study Abroad, 2009",
                             "University of British Columbia\n Mech. Eng., M.A.Sc., 2013",
                             "University of Alberta\nMech. Eng. B.Sc, 2010"),
                      alignment=c(1,0,0),
                      year=c(2009, 2010, 2013),
                      degree=c("Study Abroad","B.Sc.", "M.A.Sc."))
    
    p=ggmap(map)+
      theme(axis.line=element_blank(),axis.text.x=element_blank(),
            axis.text.y=element_blank(),axis.ticks=element_blank(),
            axis.title.x=element_blank(),axis.title.y=element_blank())+
      geom_point(aes(x=Longitude, y=Latitude), data=edu_df,
                 alpha=0.75, color="red",size=4)+
      annotate('text',x=edu_df$tcx, 
               y=edu_df$tcy, 
               label=edu_df$name, 
               hjust=edu_df$alignment,
               fontface="bold")
    p
    })
})
