###################                                             ###############
###################                                             ###############
                                # MAP DATA#
###################                                             ###############
###################                                             ###############

#                         + LOAD REQUIRED PACKAGES +
#Require packages
packages <- c("maptools", "rgdal", "ggplot2")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

#source theme_map
source("/Users/pelayogonzalez/Dropbox/Research/Rmarkdowntemplate/themes/themes.R", echo=FALSE)


#Load shapefiles
SA.taz.spdf <- readOGR(dsn="./Data/geo",
                              layer="TAZ2011_NHTS25JUL2014")


SA.taz.df <- fortify(SA.taz.spdf, region = "TAZ_EXP") #TAZ_EXP
#Base map with TAZ contour
gg <- ggplot(data=SA.taz.df, aes(map_id=id)) 
gg <- gg + geom_map(map=SA.taz.df, aes(x=long, y=lat), color="#0e0e0e", fill="#2ca25f", size=0.2) 
#Compute data to be displayed
map.dt1 <- dt2 %>%
        group_by(tazcode) %>%
        summarise(acc.taz = mean(acc.taz,na.rm=TRUE)) 

setnames(map.dt1, "tazcode", "id") #First rename tazcode to id, 
map.dt1$id <- as.character(map.dt1$id)
#Plot this data
gg <- gg + geom_map(data=map.dt1, 
                    map=SA.taz.df, 
                    aes(fill= cut(acc.taz,5)), 
                    color="#0e0e0e", 
                    size=0.2)
#Change palette
gg <- gg + scale_fill_brewer(type="seq", 
                palette="RdPu")
gg <- gg + coord_equal() 
gg <- gg + theme_map() + 
        theme(
#                 legend.position="top",
              legend.title=element_blank())  #THis can be downloaded
# gg <- gg + theme(legend.position="right") 
gg



#Explore TAZ codes in shapefile 
# length(unique(SA.taz.spdf@data$TAZ_EXP))
# length(unique(SA.taz.spdf@data$TAZ_ID))
# 
# tazinshape <- unique(SA.taz.spdf@data$TAZ_EXP)
# tazindt <- unique(dt2$tazcode)
# tazinshapename <- unique(SA.taz.spdf@data$TAZ_NAME)
# lost.taz <- setdiff(tazinshape, tazindt)
# 
# SA.taz.df2 <- SA.taz.df %>% 
#         filter(id == lost.taz)

#Green area in the east corresponds to Kruger national park
