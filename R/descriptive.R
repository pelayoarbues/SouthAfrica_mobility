###################                                             ###############
###################                                             ###############
#                               EXPLORATORY DATA ANALYSIS                    #
###################                                             ###############
###################                                             ###############

################################################################################
#                         + LOAD REQUIRED PACKAGES +
################################################################################

# install.packages("INBOtheme", repos="http://R-Forge.R-project.org",type="source")
#ggplot2 must be loaded before INBOtheme
#Require packages
packages <- c("ggplot2", "INBOtheme", "scales")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

#First let's take a quick look at our data
str(dt2)
glimpse(dt2)


#Theme set
theme_set(theme_bw())

################################################################################
#                         + PLOT SAMPLE PROPORTIONS +
################################################################################

#Plot gender proportion
p.gender <- ggplot(dt2, aes(x = gender)) + 
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Gender", 
             y = "Percent")

#Plot race proportion
p.race <- ggplot(dt2, aes(x = reorder(race, -table(race)[race]))) + 
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Race", 
             y = "Percent")

#Plot age categories proportion
p.age <- ggplot(dt2, aes(x = f_age)) + 
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Age", 
             y = "Percent")

#Plot eduation levels proportion
p.educa <- ggplot(dt2, aes(x = f_educa)) +
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Educational level", 
             y = "Percent")

#Plot labor situation
p.laborstat <- ggplot(dt2, 
                       aes(x = reorder(f_laborstat, -table(f_laborstat)[f_laborstat]))) + #reorder
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Labor status", 
             y = "Percent")

#Plot working activity in reference day
p.workact <- ggplot(dt2, 
                      aes(x = reorder(f_workact, -table(f_workact)[f_workact]))) + #reorder
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Working activity", 
             y = "Percent")

#Plot income categories proportion
p.income <- ggplot(dt2, aes(x = quintile.y)) + 
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Household income quintiles", 
             y = "Percent")

#Plot income sources proportion
p.incomesour <- ggplot(dt2, 
                       aes(x = reorder(incomesour, -table(incomesour)[incomesour]))) + #reorder
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Sources of income", 
             y = "Percent")

#Plot area of residence
p.area <- ggplot(dt2, 
                      aes(x = reorder(f_area, -table(f_area)[f_area]))) + #reorder
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Area of residence", 
             y = "Percent")

#Plot trip or no trip  proportion
p.trip <- ggplot(dt2, aes(x = f_trip)) + 
        geom_bar(aes(y = (..count..)/sum(..count..))) +
        scale_y_continuous(labels=percent) +
        labs(x = "Travel", 
             y = "Percent")

#Table no trip reasons
table(dt2$f_notripreas)


################################################################################
#                         + TRAVEL OR NOT PLOTS +
################################################################################

# Travel or not, by gender 
p.tripbygender <- ggplot(dt2,aes(gender)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        scale_y_continuous(labels=percent) +
        xlab("") +
        ylab ("Percent") +
        ggtitle("Travel in the reference day by gender") 


# Travel or not, by race 
p.tripbyrace <- ggplot(dt2,aes(race)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        scale_y_continuous(labels=percent) +
        xlab("") +
        ylab ("Percent") +
        ggtitle("Travel in the reference day by race")

# Travel or not, by age 
p.tripbyage <- ggplot(dt2,aes(f_age)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        scale_y_continuous(labels=percent) +
        xlab("") +
        ylab ("Percent") +
        ggtitle("Travel in the reference day by age") 

# Travel or not, by area of residence
p.tripbyarea <- ggplot(dt2,aes(f_area)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        scale_y_continuous(labels=percent) +
        xlab("") +
        ylab ("Percent") +
        ggtitle("Travel in the reference day by area of residence") 

# Travel or not, by labor situation
p.tripbylabor <- ggplot(dt2,aes(f_laborstat)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        scale_y_continuous(labels=percent) +
        xlab("") +
        ylab ("Percent") +
        ggtitle("Travel in the reference day by labor status") 

# Travel or not, by work act
p.tripbylabor <- ggplot(dt2,aes(f_workact)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        scale_y_continuous(labels=percent) +
        xlab("") +
        ylab ("Percent") +
        ggtitle("Travel in the reference day by work activity in the ref day") 

# Travel or not, by gender and race 
p.tripbyracegender <- ggplot(dt2,aes(gender)) +
        geom_bar(aes(fill = f_trip), position = "fill") +
        facet_grid(~race) +
        xlab("") +
        ylab ("") +
        ggtitle("")




################################################################################
#                         + ACCESSIBILITY +
################################################################################



#Travel or not and accesibility times
p.avgtime <- ggplot(dt2,aes(f_trip,avgtime2)) +
        geom_boxplot(aes(colour=f_trip)) +
#         facet_grid(~gender) +
        xlab("Travel or not") +
        ylab ("Accessibility times to public services") +
        ggtitle("Travel and accessibility times")





#Plot distribution of number of trips taken
p.ntrips <- ggplot(dt2, aes(x =ntrips)) + 
        geom_histogram(binwidth = 1) +
        labs(x = "Number of trips", 
             y = "Count")








# packages <- c("tables", "reporttools", "hmisc")
# sapply(packages, require, character.only=TRUE, quietly=TRUE)
# 
# 
# dt3 <- dt2 %>%
#         select(race, gender)
# 
# 
# #Using reporttools
# vars1 <- dt2[, c("race", "gender")]
# cap1 <- "Variables tabulation"
# tableNominal(vars = vars1, cap = cap1, vertical = FALSE, lab ="tab: nominal1", longtable = FALSE)
# 
# tableNominal(dt3)
# 
# #Using Hmisc
# describe(dt2$race)
# 
# #Using xtable





