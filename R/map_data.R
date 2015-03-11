###################                                             ###############
###################                                             ###############
                                # MAP DATA#
###################                                             ###############
###################                                             ###############

#                         + LOAD REQUIRED PACKAGES +
#Require packages
packages <- c("maptools", "rgdal", "ggplot2")
sapply(packages, require, character.only=TRUE, quietly=TRUE)



### Map 

taz      <- readOGR(dsn="./Data/geo",
                      layer="TAZ2011_NHTS25JUL2014") 

map <- fortify(taz)

gg <- ggplot() + geom_map(data=map,
                          map=map,
                          aes(x=long, y=lat, map_id=id, group=group),
                          fill="white", color="black", size=0.15)
