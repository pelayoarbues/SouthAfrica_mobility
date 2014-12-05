###################                                             ###############
###################                                             ###############
                                # NHTS 2014#
###################                                             ###############
###################                                             ###############


# Author: Pelayo G. Arbués <gonzalezpelayo@gmail.com>


#                         + LOAD REQUIRED PACKAGES +
#Require packages
packages <- c("foreign", "data.table")
sapply(packages, require, character.only=TRUE, quietly=TRUE)


#                               READ DATA
person.df <- read.dta("./Data/stata/nhts-2013-person-v1-20140718.dta")
house.df <- read.dta("./Data/stata/nhts-2013-house-v1-20140718.dta")

#Merge data
dt <- data.table(merge(person.df, house.df, by=c("UQNO"),all=TRUE))

names(dt) <- tolower(names(dt))




