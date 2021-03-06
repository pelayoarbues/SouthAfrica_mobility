###################                                             ###############
###################                                             ###############
                                # NHTS 2014#
###################                                             ###############
###################                                             ###############


# Author: Pelayo G. Arbués <gonzalezpelayo@gmail.com>

################################################################################
#                         + LOAD REQUIRED PACKAGES +
################################################################################


#Require packages
packages <- c("foreign", "data.table", "plyr", "dplyr", "knitr", "car")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

################################################################################
#                               READ DATA
################################################################################


person.df <- read.dta("./Data/stata/nhts-2013-person-v1-20140718.dta")
house.df <- read.dta("./Data/stata/nhts-2013-house-v1-20140718.dta")
#Merge data
dt <- merge(person.df, house.df, by = c("UQNO"),all = TRUE)
names(dt) <- tolower(names(dt))

################################################################################
#                               MUNGE
################################################################################


#We are keeping numeric variables (dummies) to use in regression analysis easier 
#but also factors plotting and descriptive purposes


#Create an unique IDENTIFIER for person combining  uqno and personno
dt$id <- paste(dt$uqno,dt$personno)
length(unique(dt$id))

#Create a new EDUCATION variable (educa) with less categories
dt$educa <- revalue(dt$q31hiedu, 
        c(
        #No schooling        
        "No schooling"="1",
        #General (0-9)       
        "Grade R/00"="2",
        "Grade 1/ Sub A/Class 1"="2",
        "Grade 2 / Sub B/Class 2"="2",
        "Grade 3/Standard 1/ ABET 1(Kha Ri Gude, Sanli)"="2",
        "Grade 4/ Standard 2" ="2",
        "Grade 5/ Standard 3/ ABET 2"="2",
        "Grade 6/Standard 4"="2",
        "Grade 7/Standard 5/ ABET 3"="2",
        "Grade 8/Standard 6/Form 1"="2",
        "Grade 9/Standard 7/Form 2/ ABET 4"="2",
        #Further   
        "Grade 10/ Standard 8/ Form 3" = "3",
        "Grade 11/ Standard 9/ Form 4"="3",
        "Grade 12/Standard 10/Form 5/Matric (No Exemption)"="3",
        "Grade 12/Standard 10/Form 5/Matric (Exemption *)"="3",
        "Certificate with less than Grade 12/Std 10"="3",       
        "Diploma with less than Grade 12/Std 10"="3",           
        "Certificate with Grade 12/Std 10"="3",                 
        "Diploma with Grade 12/Std 10"="3", 
        "NTC 1/ N1/NC (V) Level 2"="3",
        "NTC 2/ N2/ NC (V) Level 3"="3",
        "NTC 3/ N3/NC (V)/Level 4"="3",
        #Higher  
        "N4/NTC 4" = "4",
        "N5/NTC 5" = "4",
        "N6/NTC 6" = "4",
        "Higher Diploma (Technikon)" = "4",
        "Bachelors Degree" = "4",
        #Post
        "Post Higher Diploma (Technikon Masters, Doctoral)" = "5",
        "Bachelors Degree and post-graduate diploma" = "5",       
        "Honours Degree" = "5",                                   
        "Higher degree (Masters, Doctorate)" = "5", 
        "Other" = NA,
        "Do not know" = NA,
        "Unspecified" = NA)
        )

# Make No schooling first and label the values
dt$f_educa <- ordered(dt$educa,
                     levels = c(1,2,3,4,5),
                     labels = c("No schooling",
                                "General",
                                "Further",
                                "Higher",
                                "Post")
                     )


#Create dummy variable
dt$d_educa <- as.integer(dt$educa)
dt$d_educa <- recode(dt$d_educa, 
                       "1 = 0; 
                        2 = 1;
                        3 = 2;
                        4 = 3;
                        5 = 4"
                     )


#DISABILITY undisab is integer but lets convert it to a factor (f_undisab) and change 
#unspecified to NA.
dt$f_undisab <- factor(dt$undisab,
                     levels = c(0,1,8),
                     labels = c("Not disabled","Disabled","Unspecified"))
dt$f_undisab <- revalue(dt$f_undisab, 
                    c("Unspecified"=NA)
                    )

#Convert undisab to dummy variable where:
#       Not disabled = 0
#       Disabled = 1
#       Unspecified converted to NA
dt$d_undisab <- recode(dt$undisab, 
        "0 = 0; 
        1 = 1;
        8 = NA"
        )

#Convert LICENCE to numeric and change unspecified to NA
dt$d_licence <- as.integer(dt$f_havelicence)
dt$d_licence <- recode(dt$d_licence, 
        "1 = 1; 
        2 = 0;
        3 = NA"
        )

#Convert RACE to numeric and change unspecified to NA
dt$d_race<- as.integer(dt$race)
dt$d_race <- recode(dt$d_race, 
        "1 = 1; 
        2 = 0;
        3 = NA"
        )

#Create male variable, takes=1 for male, 0 female
dt$d_male <- as.integer(dt$gender)
dt$d_male <- recode(dt$d_male, 
        "1 = 1; 
        2 = 0"
        )

#Create a categorical variable with Age information
setnames(dt, "d_age", "age") #First rename d_age to age, 
#in order to be able to use d_age as categorical
dt$d_age[dt$age < 18] <- 0
dt$d_age[dt$age >= 18 & dt$age < 36] <- 1
dt$d_age[dt$age >= 36 & dt$age < 51] <- 2
dt$d_age[dt$age >= 51 & dt$age < 65] <- 3
dt$d_age[dt$age >= 65 & dt$age < 79] <- 4
dt$d_age[dt$age >= 80] <- 5

#Create an ordered factor variable f_age
dt$f_age <- ordered(dt$d_age,
                levels = c(0,1,2,3,4,5),
                labels = c("Age < 18",
                           "Age 18-35",
                           "Age 36-50",
                           "Age 51-64",
                           "Age 65-79",
                           "Age 80+")
                )

#Create a dummy variable for traveling or not in the past 7 days
setnames(dt, "q22trip", "d_trip") #First rename colname to d_trip, 
dt$d_trip <- recode(dt$d_trip, 
        "1 = 1; 
        2 = 0;
        3 = NA"
        )

dt$f_trip <- factor(dt$d_trip, 
        levels = c(1, 0),
        labels = c("Yes", "No")
)

#Create factor for disable
dt$f_undisab <-  factor (dt$undisab,
                         levels = c(0,1),
                         labels = c("No","Yes"))

#Reasons not to travel
setnames(dt, "q23ynottrip", "d_notripreas") #First no trip reasons
dt$f_notripreas <- factor(dt$d_notripreas, 
                levels = c(01,02,03,04,05,07,08,10,12,13,14,16,88,99),
                labels = c("Did not need to travel",
                          "Financial reasons",
                          "Not well enough to travel",
                          "Too expensive",
                          "Not enough time to travel",
                          "No available public transport",
                          "Disabled",
                          "Too old/young",
                          "No interest",
                          "Taking care of relative",
                          "No particular reason",
                          "Other",
                          "Not applicable",
                          "Unspecified")
                )

#Type of area: Metro, urban, rural
setnames(dt, "type", "f_area") #First no trip reasons

#Main source of income
setnames(dt, "q74mainn", "incomesour") #Main income source
dt$incomesour <- revalue(dt$incomesour,
                         c("Salaries/wages/commission" = 1,
                           "Income from a business" = 1,
                           "Sales of farming products and services" = 1,
                           "other income sources e.g. rental income, interest" =1,
                           "Pensions" = 2,
                           "Grants" = 2,
                           "Income from UIF" = 2,
                           "Remittances/ including child maintenance" = 3,
                           "Unspecified" = NA)
                         )

# Make No schooling first and label the values
dt$incomesour <- factor(dt$incomesour,
                      levels = c(1,2,3),
                      labels = c("Wage/rental/Sales",
                                 "Unempl/Grant/Pension",
                                 "Remittances/child maintenance")
                )


#Create motoveh, a variable that takes value 1 if the household has access to a private vehicle
#                 motor <- grep("^q710", names(dt), value=TRUE) #to find colums starting with q710
dt$motorveh <- rep(0,nrow(dt))
dt$motorveh[(dt$q710motor != 0 & dt$q710motor != 99) | 
        (dt$q710caremp != 0 & dt$q710caremp != 99) |
        (dt$q710carhh != 0 & dt$q710carhh != 99) |
        (dt$q710carvfr != 0 & dt$q710carvfr != 99) |                    
        (dt$q710mbus != 0 & dt$q710mbus != 99) |            
        (dt$q710truck != 0 & dt$q710truck !=99) |
        (dt$q710othr != 0 & dt$q710othr != 99)] <- 1

dt$f_motorveh <- factor(dt$motorveh,
                        levels = c(0,1),
                        labels = c("No motor vehicles", 
                                   "Access to motor vehicles"))

#Check the result of the previous operation
# dtprueb <- dt %>%
# select (motorveh,contains("q710"))


################################################################################
#          Count number of trips to estimate ordered model
################################################################################
sel <- grep("^q24", names(dt)) #Find columns index starting with q24
values <- 88 #Unspecified and missing values to replace
dt[ ,sel][dt[ ,sel] == 88] <- NA


#Compute total number of trips
dt$ntrips <- rowSums(dt[,sel]) 


################################################################################
#          Dummy variables of reasons to trip
################################################################################
#Work (1 if trip to work >0, 0 otherwise)

#Educa (1 if trip to educative center >0, 0 otherwise)

################################################################################
#          Mode of travel used in the travel day
################################################################################
sel <- grep("^q25", names(dt), value=T) #Select variables containing number of trips by mode

#Create categorical variable indicating: 1 private vehicle, 2 walking, 3 bike, 4 public transport...
#This variable will collect the main mode (that mode that outnumbers the rest)


################################################################################
#                                Employment status
################################################################################
dt$laborstat <- rep(NA,nrow(dt))
dt$q41work2 <- as.numeric(dt$q41work) #Convert to numeric for easy access
dt$q42ynotwrkk2 <- as.numeric(dt$q42ynotwrkk) #Convert to numeric for easy access

dt$laborstat[(dt$q41work2 == 1 | dt$q41work2 == 2)] <- 1 #Working
dt$laborstat[(dt$q41work2 == 3 & (dt$q42ynotwrkk2 == 8 | 
                                  dt$q42ynotwrkk2 == 7))] <- 1 #Working (on leave or sick)
dt$laborstat[(dt$q41work2 == 3 & dt$q42ynotwrkk2 == 1)] <- 2 #Student
dt$laborstat[(dt$q41work2 == 3 & dt$q42ynotwrkk2 == 2)] <- 3 #Housewife
dt$laborstat[(dt$q41work2 == 3 & dt$q42ynotwrkk2 == 3)] <- 4 #Pensioner
dt$laborstat[(dt$q41work2 == 3 & (dt$q42ynotwrkk2 == 4 |
                                dt$q42ynotwrkk2 == 5   |
                                dt$q42ynotwrkk2 == 6 |
                                dt$q42ynotwrkk2 == 11))] <- 5 #Unemployed

dt$f_laborstat <- factor(dt$laborstat,
                         levels = c(1,2,3,4,5),
                         labels = c("Working",
                                    "Student",
                                    "Housewife",
                                    "Pensioner",
                                    "Unemployed"))


#Alternatively I build a working activity in the travel day
dt$workact <- rep(NA,nrow(dt))
dt$q41work2 <- as.numeric(dt$q41work) #Convert to numeric for easy access
dt$q42ynotwrkk2 <- as.numeric(dt$q42ynotwrkk) #Convert to numeric for easy access

dt$workact[(dt$q41work2 == 1 | dt$q41work2 == 2)] <- 1 #Working
dt$workact[(dt$q41work2 == 3 & dt$q42ynotwrkk2 == 1)] <- 2 #Student
dt$workact[(dt$q41work2 == 3 & dt$q42ynotwrkk2 == 2)] <- 3 #Housewife
dt$workact[(dt$q41work2 == 3 & (dt$q42ynotwrkk2 == 3 | 
                                dt$q42ynotwrkk2 == 4 |
                                dt$q42ynotwrkk2 == 5 |
                                dt$q42ynotwrkk2 == 6 |
                                dt$q42ynotwrkk2 == 7 |
                                dt$q42ynotwrkk2 == 8 |
                                dt$q42ynotwrkk2 == 9 |
                                dt$q42ynotwrkk2 == 11))] <- 4 #Not working

dt$f_workact <- factor(dt$laborstat,
                         levels = c(1,2,3,4),
                         labels = c("Working",
                                    "Student",
                                    "Housewife",
                                    "Not working"))

################################################################################
#                               Acc_i = (Sum[t]/n)
################################################################################
sel <- grep("^q711(.*)time$", names(dt), value=T) #Select variables with time to facilities
sel <- append(sel,"q711trtribal")
dt[ ,sel][dt[ ,sel] == 888] <- NA #Convert "Not applicable" responses to NA
dt[ ,sel][dt[ ,sel] == 998] <- NA #Convert "Unspecified" responses to NA
dt[ ,sel][dt[ ,sel] == 999] <- NA #Convert "Do not know" responses to NA


dt$timesum <- rep(NA,nrow(dt)) #Create accessibility variable in dt
dt$timesum <- rowSums(dt[,sel], na.rm=TRUE) #Sum times to public serv if not NA
dt["timesum"][dt["timesum"] == 0] <- NA #Replace 0 with NA
#Count number of columns where times are not na
dt$nrecord <- rowSums(!is.na(dt[ ,sel]))
#Compute average times
dt$avgtime <- (dt$timesum/dt$nrecord)

################################################################################
#                               acc.taz = Avg_z((Sum[t]/n))
################################################################################
#Compute an accessibility variable for each TAZ, taking average of avgtime of each
#person living in each TAZ
dt <- dt %>%
        group_by(tazcode) %>%
        summarise(acc.taz = mean(avgtime,na.rm=TRUE)) %>%
        inner_join(dt, by='tazcode')


################################################################################
#                               Acc_i = (Sum[t]/n) (avgtime2)

                        #avgtime2 = Filling NAs in avgtime with acc.taz
################################################################################
dt$avgtime2 <- dt$avgtime
dt$avgtime2 <- ifelse(is.na(dt$avgtime2), dt$acc.taz, dt$avgtime2) 




################################################################################
#                               SELECT variables
################################################################################



#Subset dt with those variables likely to be used.
dt2 <- dt %>%
        select(id, #person identifier
                f_educa, # Ordered factor variable for education
#                d_educa, # Categorical variable for education
#                d_male, #Dummy variable for male (1) and female (0)
                gender, #Factor variable for gender
#                d_age, # Categorical variable for age
                f_age, # Ordered factor variable for age
                race, #Factor variable for race
#                d_race, #Dummy variable for race
                f_havelicence, #Factor variable for licence
#                d_havelicence, #Dummy variable for licence
#                d_trip, #collects if the person travelled (1) or not(0) in past 7 days
                f_trip,
                f_notripreas,#Reasons for not travelling
                f_area, #Type of area (metro, urban, rural)
                quintile.y, #Income quintiles
                incomesour, #main source of income
                f_undisab,
#                 laborstat, #labor status
                f_laborstat,
#                 workact, #working activity in the day of reference
                f_workact,
                f_motorveh, ##Owns or have access to a motor vehicle (factor)
#                 motorveh, #Owns or have access to a motor vehicle (1), no access (0)
                tazcode, #Travel analysis zone code
                pr_code.x, # Province code
                ntrips, # Number of total trips in the travel day of reference
                avgtime2, #Average time to public services per person
                acc.taz     #TAZ accessibility: Average time to public services per person
               )

# rm(dt,house.df,person.df)


# #Subset dt with those variables including travel times
# 
dt3 <- dt %>%
        select(id,q711shptime,q711oshptime,q711hetime, 
q711chtime,q711medtime,q711ptime,q711wtime,q711trtribal,
q711poltime,q711muntime,q711fintime)
        


