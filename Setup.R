# ------- set seed to ensure reproducability --------------------------

set.seed(0)  # set the seed

# ---- Load needed libraries -----------------------------------------------------
#install.packages("caret")


library(readr) # for reading the data
library(inspectdf) # for inspecting the variables
library(corrplot) # for correlationplots
library(ggplot2) # for plotting
library(Hmisc) 
library(naniar) 
library(mice) # for MCAR test
library(dplyr) # for data transformation
library(missRanger) # for imputation
library(skimr) # for types of variables
library(SamplingStrata) # for sampling
library(sampling) # for sampling
library(DataExplorer)
library(splitTools)
library(kernlab)
library(FSelector)
library(rJava)
library(caret)
library(Metrics)



# for example:
# library(jsonlite)
# library(stringr)
# library(plyr)
# library(psych)
# library(skimr)
# library(RColorBrewer)
# library(forcats)
# library(gridExtra)
# library(grid) 
# library(ggplotify) 
# library(viridis) 


# ---- Descriptions -----------------------------------------------------------


# ---- clean the workspace: ------------------------------------

rm(list = ls(all.names = TRUE))

# ---- Data import ------------------------------------------------------------

# import as dataframe
RISK <- read_csv("datasets/National YRBS Datasets/XXHq.csv",show_col_types = FALSE)



# ---- Deleting redundant/unnecessary variables ------------------------------------------

# all(RISK$site==RISK$site[1]) # proof: no information in site variable
RISK$site<-NULL # only "XX"
RISK$orig_rec<-NULL # only NAs
RISK$q4<-NULL # aggregated in raceeth
RISK$q5<-NULL # aggregated in raceeth
RISK$record<-NULL # id column

# RISK <- subset(RISK, select = - c("site", "orig_rec", "q4","q5") ) # get rid of useless variables



# ---- factorizing the categorical variables for imputation ----------------------------------------

# the variables have to be factorized for imputation
RISK$q1<-factor(RISK$q1,ordered = TRUE)
RISK$raceeth<-factor(RISK$raceeth)
RISK$q2<-factor(RISK$q2)
RISK$q3<-factor(RISK$q3,ordered = TRUE)
RISK$q8<-factor(RISK$q8,ordered = TRUE)
RISK$q9<-factor(RISK$q9,ordered = TRUE)
RISK$q10<-factor(RISK$q10,ordered = TRUE)
RISK$q11<-factor(RISK$q11,ordered = TRUE)
RISK$q12<-factor(RISK$q12,ordered = TRUE)
RISK$q13<-factor(RISK$q13,ordered = TRUE)
RISK$q14<-factor(RISK$q14,ordered = TRUE)
RISK$q15<-factor(RISK$q15,ordered = TRUE)
RISK$q16<-factor(RISK$q16,ordered = TRUE)
RISK$q17<-factor(RISK$q17,ordered = TRUE)
RISK$q18<-factor(RISK$q18)
RISK$q19<-factor(RISK$q19)
RISK$q20<-factor(RISK$q20,ordered = TRUE)
RISK$q21<-factor(RISK$q21,ordered = TRUE)
RISK$q22<-factor(RISK$q22,ordered = TRUE)
RISK$q23<-factor(RISK$q23)
RISK$q24<-factor(RISK$q24)
RISK$q25<-factor(RISK$q25)
RISK$q26<-factor(RISK$q26)
RISK$q27<-factor(RISK$q27)
RISK$q28<-factor(RISK$q28,ordered = TRUE)
RISK$q29<-factor(RISK$q29)
RISK$q30<-factor(RISK$q30)
RISK$q31<-factor(RISK$q31,ordered = TRUE)
RISK$q32<-factor(RISK$q32,ordered = TRUE)
RISK$q33<-factor(RISK$q33,ordered = TRUE)
RISK$q34<-factor(RISK$q34)
RISK$q35<-factor(RISK$q35,ordered = TRUE)
RISK$q36<-factor(RISK$q36)
RISK$q37<-factor(RISK$q37,ordered = TRUE)
RISK$q38<-factor(RISK$q38,ordered = TRUE)
RISK$q39<-factor(RISK$q39)
RISK$q40<-factor(RISK$q40,ordered = TRUE)
RISK$q41<-factor(RISK$q41,ordered = TRUE)
RISK$q42<-factor(RISK$q42,ordered = TRUE)
RISK$q43<-factor(RISK$q43,ordered = TRUE)
RISK$q44<-factor(RISK$q44)
RISK$q45<-factor(RISK$q45,ordered = TRUE)
RISK$q46<-factor(RISK$q46,ordered = TRUE)
RISK$q47<-factor(RISK$q47,ordered = TRUE)
RISK$q48<-factor(RISK$q48,ordered = TRUE)
RISK$q49<-factor(RISK$q49,ordered = TRUE)
RISK$q50<-factor(RISK$q50,ordered = TRUE)
RISK$q51<-factor(RISK$q51,ordered = TRUE)
RISK$q52<-factor(RISK$q52,ordered = TRUE)
RISK$q53<-factor(RISK$q53,ordered = TRUE)
RISK$q54<-factor(RISK$q54,ordered = TRUE)
RISK$q55<-factor(RISK$q55)
RISK$q56<-factor(RISK$q56)
RISK$q57<-factor(RISK$q57)
RISK$q58<-factor(RISK$q58,ordered = TRUE)
RISK$q59<-factor(RISK$q59,ordered = TRUE)
RISK$q60<-factor(RISK$q60,ordered = TRUE)
RISK$q61<-factor(RISK$q61)
RISK$q62<-factor(RISK$q62)
RISK$q63<-factor(RISK$q63)
RISK$q64<-factor(RISK$q64)
RISK$q65<-factor(RISK$q65)
RISK$q66<-factor(RISK$q66,ordered = TRUE)
RISK$q67<-factor(RISK$q67)
RISK$q68<-factor(RISK$q68,ordered = TRUE)
RISK$q69<-factor(RISK$q69,ordered = TRUE)
RISK$q70<-factor(RISK$q70,ordered = TRUE)
RISK$q71<-factor(RISK$q71,ordered = TRUE)
RISK$q72<-factor(RISK$q72,ordered = TRUE)
RISK$q73<-factor(RISK$q73,ordered = TRUE)
RISK$q74<-factor(RISK$q74,ordered = TRUE)
RISK$q75<-factor(RISK$q75,ordered = TRUE)
RISK$q76<-factor(RISK$q76,ordered = TRUE)
RISK$q77<-factor(RISK$q77,ordered = TRUE)
RISK$q78<-factor(RISK$q78,ordered = TRUE)
RISK$q79<-factor(RISK$q79,ordered = TRUE)
RISK$q80<-factor(RISK$q80,ordered = TRUE)
RISK$q81<-factor(RISK$q81,ordered = TRUE)
RISK$q82<-factor(RISK$q82)
RISK$q83<-factor(RISK$q83)
RISK$q84<-factor(RISK$q84,ordered = TRUE)
RISK$q85<-factor(RISK$q85,ordered = TRUE)
RISK$q86<-factor(RISK$q86,ordered = TRUE)
RISK$q87<-factor(RISK$q87)
RISK$q88<-factor(RISK$q88,ordered = TRUE)
RISK$q89<-factor(RISK$q89,ordered = TRUE)
RISK$q90<-factor(RISK$q90,ordered = TRUE)
RISK$q91<-factor(RISK$q91,ordered = TRUE)
RISK$q92<-factor(RISK$q92,ordered = TRUE)
RISK$q93<-factor(RISK$q93,ordered = TRUE)
RISK$q94<-factor(RISK$q94)
RISK$q95<-factor(RISK$q95,ordered = TRUE)
RISK$q96<-factor(RISK$q96,ordered = TRUE)
RISK$q97<-factor(RISK$q97,ordered = TRUE)
RISK$q98<-factor(RISK$q98)
RISK$q99<-factor(RISK$q99, ordered= TRUE)
RISK$stratum<-factor(RISK$stratum)
RISK$psu<-factor(RISK$psu)
RISK$q6orig<-factor(RISK$q6orig)
RISK$q7orig<-factor(RISK$q7orig)






# ---- maybe still useful, please do not delete: 
# -----------------------------------------------------------------------------



# ---- creating the target variable -------
# now is done in the main rmarkdown file.
# this is the old version

# RISK_imp <- RISK_imp %>% 
#  filter(!is.na(q25) & !is.na(q26) & !is.na(q27) & !is.na(q28) & !is.na(q29)) %>% 
#  mutate(suicidal_class = ifelse(!is.na(q29) & q29 > 1,   5,
#                          ifelse(!is.na(q28) & q28 > 1,   5,
#                          ifelse(!is.na(q27) & q27 == 1,  4,
#                          ifelse(!is.na(q26) & q26 == 1,  3,
#                          ifelse(!is.na(q25) & q25 == 1,  2,
#                                                         1))))))

# ----- stratified sampling with more than 1 strata variable -----------------

# preprocessing for stratification:
# RISK_num <- as.data.frame(lapply(RISK_imp_s, as.numeric)) # convert all variables to numeric
# corr_mat=cor(RISK_num, method="s") # correlation matrix
# target_corr <- corr_mat[, "suicidal_class"] # get correlations with respect to the target variable
# df with variable names and their correlation values:
# corr_data <- data.frame(
#  var = names(target_corr),
#  corr = target_corr
#)

# Sort the data frame by correlation values
# sorted_corr_data <- corr_data[order(-corr_data$corr), ]

# stratification variable vector:
# strat_vars <- sorted_corr_data[abs(sorted_corr_data$corr) > 0.25,] 
# select all correlations as possible strata (pos & neg) bigger than 0.25

# all possible stratum columns
# strat_df<-RISK_imp_s[, strat_vars$var] 

# replicate stratum size
# stratum_sizes <- rep(2000, length(strat_vars$var))

# ---- Example: Merge labels and add data to df ------------


# Add the sentiment score and magnitude to the petdata
# petdata <- merge(petdata, sentiment_df, by = "PetID",
#                 all.x = TRUE, sort = FALSE)

# Merge the breed, color, and state labels to the petdata
# petdata <- merge(petdata, breed_lab, by.x = "Breed1", by.y = "BreedID",
#                  all.x = TRUE, sort = FALSE)
# names(petdata)[names(petdata) == "Breed1"] <- "BreedID1"


# ---- helper functions ------------------------------------------------------


# ---- Clean up the environment -----------------------------------------------


# rm(...) remove unneeded (helper) variables after the setup

