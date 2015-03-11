###################                                             ###############
###################                                             ###############
#                               DESCRIPTIVE ANALYSIS                    #
###################                                             ###############
###################                                             ###############

packages <- c("tables", "reporttools", "hmisc")
sapply(packages, require, character.only=TRUE, quietly=TRUE)


dt3 <- dt2 %>%
        select(race, gender)


#Using reporttools
vars1 <- dt2[, c("race", "gender")]
cap1 <- "Patient characteristics: nominal variables."
tableNominal(vars = vars1, cap = cap1, vertical = FALSE, lab ="tab: nominal1", longtable = FALSE)

tableNominal(dt3)

#Using Hmisc
describe(dt2$race)

#Using xtable





