###################                                             ###############
###################                                             ###############
                                # NHTS 2014#
###################                                             ###############
###################                                             ###############


# Author: Pelayo G. Arbués <gonzalezpelayo@gmail.com>


#                         + LOAD REQUIRED PACKAGES +
#Require packages
packages <- c("foreign")
sapply(packages, require, character.only=TRUE, quietly=TRUE)


#                               READ DATA
person.df <- read.dta("./Data/stata/nhts-2013-person-v1-20140718.dta")






