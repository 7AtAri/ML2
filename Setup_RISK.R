# ------- set seed to ensure reproducability --------------------------

set.seed(0)  # set the seed

# ----libraries ------------------------------------------
library(readr) # for reading the data
library(splitTools)
library(dplyr) # for data transformation
library(e1071) # for svm
library(caret) # for nearZeroVar()
library(kernlab)
library(FSelector) # for feature selection with mutual information
library(mltest)
library(pROC) # for ROC and AUC 
library(nnet) # for model.matrix
library(naivebayes) # for naive bayes
library(magick) # for printing saved pngs

# ---- clean the workspace: ------------------------------------

rm(list = ls(all.names = TRUE))

# ---- Data import ------------------------------------------------------------

# import as dataframe
RISK_2000_3 <- read_csv("RISK_2000_3.csv", show_col_types = FALSE)

# ------- delete useless columns -----------------------------------------------
# useless_cols<-c("stratum" )  # add all the columns we do not need
# RISK_2000_3 <- RISK_2000_3[, -which(colnames(RISK_2000_3) %in% useless_cols)] # subset 

# ---- factorizing the categorical variables for imputation ----------------------------------------

# the variables have to be factorized for imputation
RISK_2000_3$q1<-factor(RISK_2000_3$q1,ordered = TRUE)
RISK_2000_3$raceeth<-factor(RISK_2000_3$raceeth)
RISK_2000_3$q2<-factor(RISK_2000_3$q2)
RISK_2000_3$q3<-factor(RISK_2000_3$q3,ordered = TRUE)
RISK_2000_3$q8<-factor(RISK_2000_3$q8,ordered = TRUE)
RISK_2000_3$q9<-factor(RISK_2000_3$q9,ordered = TRUE)
RISK_2000_3$q10<-factor(RISK_2000_3$q10,ordered = TRUE)
RISK_2000_3$q11<-factor(RISK_2000_3$q11,ordered = TRUE)
RISK_2000_3$q12<-factor(RISK_2000_3$q12,ordered = TRUE)
RISK_2000_3$q13<-factor(RISK_2000_3$q13,ordered = TRUE)
RISK_2000_3$q14<-factor(RISK_2000_3$q14,ordered = TRUE)
RISK_2000_3$q15<-factor(RISK_2000_3$q15,ordered = TRUE)
RISK_2000_3$q16<-factor(RISK_2000_3$q16,ordered = TRUE)
RISK_2000_3$q17<-factor(RISK_2000_3$q17,ordered = TRUE)
RISK_2000_3$q18<-factor(RISK_2000_3$q18)
RISK_2000_3$q19<-factor(RISK_2000_3$q19)
RISK_2000_3$q20<-factor(RISK_2000_3$q20,ordered = TRUE)
RISK_2000_3$q21<-factor(RISK_2000_3$q21,ordered = TRUE)
RISK_2000_3$q22<-factor(RISK_2000_3$q22,ordered = TRUE)
RISK_2000_3$q23<-factor(RISK_2000_3$q23)
RISK_2000_3$q24<-factor(RISK_2000_3$q24)
RISK_2000_3$q30<-factor(RISK_2000_3$q30)
RISK_2000_3$q31<-factor(RISK_2000_3$q31,ordered = TRUE)
RISK_2000_3$q32<-factor(RISK_2000_3$q32,ordered = TRUE)
RISK_2000_3$q33<-factor(RISK_2000_3$q33,ordered = TRUE)
RISK_2000_3$q34<-factor(RISK_2000_3$q34)
RISK_2000_3$q35<-factor(RISK_2000_3$q35,ordered = TRUE)
RISK_2000_3$q36<-factor(RISK_2000_3$q36)
RISK_2000_3$q37<-factor(RISK_2000_3$q37,ordered = TRUE)
RISK_2000_3$q38<-factor(RISK_2000_3$q38,ordered = TRUE)
RISK_2000_3$q39<-factor(RISK_2000_3$q39)
RISK_2000_3$q40<-factor(RISK_2000_3$q40,ordered = TRUE)
RISK_2000_3$q41<-factor(RISK_2000_3$q41,ordered = TRUE)
RISK_2000_3$q42<-factor(RISK_2000_3$q42,ordered = TRUE)
RISK_2000_3$q43<-factor(RISK_2000_3$q43,ordered = TRUE)
RISK_2000_3$q44<-factor(RISK_2000_3$q44)
RISK_2000_3$q45<-factor(RISK_2000_3$q45,ordered = TRUE)
RISK_2000_3$q46<-factor(RISK_2000_3$q46,ordered = TRUE)
RISK_2000_3$q47<-factor(RISK_2000_3$q47,ordered = TRUE)
RISK_2000_3$q48<-factor(RISK_2000_3$q48,ordered = TRUE)
RISK_2000_3$q49<-factor(RISK_2000_3$q49,ordered = TRUE)
RISK_2000_3$q50<-factor(RISK_2000_3$q50,ordered = TRUE)
RISK_2000_3$q51<-factor(RISK_2000_3$q51,ordered = TRUE)
RISK_2000_3$q52<-factor(RISK_2000_3$q52,ordered = TRUE)
RISK_2000_3$q53<-factor(RISK_2000_3$q53,ordered = TRUE)
RISK_2000_3$q54<-factor(RISK_2000_3$q54,ordered = TRUE)
RISK_2000_3$q55<-factor(RISK_2000_3$q55)
RISK_2000_3$q56<-factor(RISK_2000_3$q56)
RISK_2000_3$q57<-factor(RISK_2000_3$q57)
RISK_2000_3$q58<-factor(RISK_2000_3$q58,ordered = TRUE)
RISK_2000_3$q59<-factor(RISK_2000_3$q59,ordered = TRUE)
RISK_2000_3$q60<-factor(RISK_2000_3$q60,ordered = TRUE)
RISK_2000_3$q61<-factor(RISK_2000_3$q61)
RISK_2000_3$q62<-factor(RISK_2000_3$q62)
RISK_2000_3$q63<-factor(RISK_2000_3$q63)
RISK_2000_3$q64<-factor(RISK_2000_3$q64)
RISK_2000_3$q65<-factor(RISK_2000_3$q65)
RISK_2000_3$q66<-factor(RISK_2000_3$q66,ordered = TRUE)
RISK_2000_3$q67<-factor(RISK_2000_3$q67)
RISK_2000_3$q68<-factor(RISK_2000_3$q68,ordered = TRUE)
RISK_2000_3$q69<-factor(RISK_2000_3$q69,ordered = TRUE)
RISK_2000_3$q70<-factor(RISK_2000_3$q70,ordered = TRUE)
RISK_2000_3$q71<-factor(RISK_2000_3$q71,ordered = TRUE)
RISK_2000_3$q72<-factor(RISK_2000_3$q72,ordered = TRUE)
RISK_2000_3$q73<-factor(RISK_2000_3$q73,ordered = TRUE)
RISK_2000_3$q74<-factor(RISK_2000_3$q74,ordered = TRUE)
RISK_2000_3$q75<-factor(RISK_2000_3$q75,ordered = TRUE)
RISK_2000_3$q76<-factor(RISK_2000_3$q76,ordered = TRUE)
RISK_2000_3$q77<-factor(RISK_2000_3$q77,ordered = TRUE)
RISK_2000_3$q78<-factor(RISK_2000_3$q78,ordered = TRUE)
RISK_2000_3$q79<-factor(RISK_2000_3$q79,ordered = TRUE)
RISK_2000_3$q80<-factor(RISK_2000_3$q80,ordered = TRUE)
RISK_2000_3$q81<-factor(RISK_2000_3$q81,ordered = TRUE)
RISK_2000_3$q82<-factor(RISK_2000_3$q82)
RISK_2000_3$q83<-factor(RISK_2000_3$q83)
RISK_2000_3$q84<-factor(RISK_2000_3$q84,ordered = TRUE)
RISK_2000_3$q85<-factor(RISK_2000_3$q85,ordered = TRUE)
RISK_2000_3$q86<-factor(RISK_2000_3$q86,ordered = TRUE)
RISK_2000_3$q87<-factor(RISK_2000_3$q87)
RISK_2000_3$q88<-factor(RISK_2000_3$q88,ordered = TRUE)
RISK_2000_3$q89<-factor(RISK_2000_3$q89,ordered = TRUE)
RISK_2000_3$q90<-factor(RISK_2000_3$q90,ordered = TRUE)
RISK_2000_3$q91<-factor(RISK_2000_3$q91,ordered = TRUE)
RISK_2000_3$q92<-factor(RISK_2000_3$q92,ordered = TRUE)
RISK_2000_3$q93<-factor(RISK_2000_3$q93,ordered = TRUE)
RISK_2000_3$q94<-factor(RISK_2000_3$q94)
RISK_2000_3$q95<-factor(RISK_2000_3$q95,ordered = TRUE)
RISK_2000_3$q96<-factor(RISK_2000_3$q96,ordered = TRUE)
RISK_2000_3$q97<-factor(RISK_2000_3$q97,ordered = TRUE)
RISK_2000_3$q98<-factor(RISK_2000_3$q98)
RISK_2000_3$q99<-factor(RISK_2000_3$q99, ordered= TRUE)
RISK_2000_3$stratum<-factor(RISK_2000_3$stratum)
RISK_2000_3$psu<-factor(RISK_2000_3$psu)
RISK_2000_3$q6orig<-factor(RISK_2000_3$q6orig)
RISK_2000_3$q7orig<-factor(RISK_2000_3$q7orig)
RISK_2000_3$suicidal_class<-factor(RISK_2000_3$suicidal_class, ordered= TRUE)
