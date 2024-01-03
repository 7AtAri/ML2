# ------- set seed to ensure reproducability --------------------------

set.seed(0)  # set the seed

# ------ saving the new df ---------------

library(readr)

# current_directory <- getwd()

# current working directory
# print(current_directory)

# write.csv(RISK_red_imp_s5, file="../RISK_red_imp_s5.csv",  row.names = FALSE)
write.csv(RISK_red, file="../RISK_red.csv",  row.names = FALSE)


library(dplyr)


## ------ naming the variables --------------

if (!("age" %in% colnames(RISK_red)) && "q1" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red %>%
    rename(age = q1)
}

if (!("sex" %in% colnames(RISK_red)) && "q2" %in% colnames(RISK_red)){
  RISK_red <- RISK_red%>%
    rename(sex = q2)}

if (!("grade" %in% colnames(RISK_red))&& "q3" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(grade = q3)}

if (!("height_feet" %in% colnames(RISK_red)) && "q6" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(height_feet = q6)}

if (!("weight_pounds" %in% colnames(RISK_red))&& "q7" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(weight_pounds = q7)}

if (!("seat_belt" %in% colnames(RISK_red)) && "q8" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(seat_belt = q8)}

if (!("drinking_driver_30d" %in% colnames(RISK_red)) && "q9" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(drinking_driver_30d = q9)}

if (!("drinking_driving_30d" %in% colnames(RISK_red)) && "q10" %in% colnames(RISK_red)){
  RISK_red <- RISK_red%>%
    rename(drinking_driving_30d = q10)}

if (!("texting_driving_30d" %in% colnames(RISK_red)) && "q11" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(texting_driving_30d = q11)}

if (!("weapon_to_school_30d" %in% colnames(RISK_red)) && "q12" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(weapon_to_school_30d = q12)}

if (!("gun_to_school_12m" %in% colnames(RISK_red)) && "q13" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(gun_to_school_12m = q13)}

if (!("absence_safety_concerns_30d" %in% colnames(RISK_red)) && "q14" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(absence_safety_concerns_30d = q14)}

if (!("weapon_threatened_at_school_12m" %in% colnames(RISK_red)) && "q15" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(weapon_threatened_at_school_12m = q15)}

if (!("physical_fight_12m" %in% colnames(RISK_red)) && "q16" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(physical_fight_12m = q16)}

if (!("physical_fight_at_school_12m" %in% colnames(RISK_red)) && "q17" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(physical_fight_at_school_12m = q17)}

if (!("saw_attack" %in% colnames(RISK_red)) && "q18" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(saw_attack = q18)}

if (!("forced_sex" %in% colnames(RISK_red)) && "q19" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(forced_sex = q19)}

if (!("sexual_violence_12m" %in% colnames(RISK_red)) && "q20" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(sexual_violence_12m = q20)}

if (!("sexual_dating_violence_12m" %in% colnames(RISK_red)) && "q21" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(sexual_dating_violence_12m = q21)}

if (!("physical_dating_violence_12m" %in% colnames(RISK_red)) && "q22" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(physical_dating_violence_12m = q22)}

if (!("bullied_at_school_12m" %in% colnames(RISK_red)) && "q23" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(bullied_at_school_12m = q23)}

if (!("bullied_electronically_12m" %in% colnames(RISK_red)) && "q24" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(bullied_electronically_12m = q24)}

if (!("tried_smoking" %in% colnames(RISK_red)) && "q30" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(tried_smoking = q30)}

if (!("smoking_age" %in% colnames(RISK_red)) && "q31" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(smoking_age = q31)}

if (!("smoking_30d" %in% colnames(RISK_red)) && "q32" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(smoking_30d = q32)}

if (!("smoking_perday_30d" %in% colnames(RISK_red)) && "q33" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(smoking_perday_30d = q33)}

if (!("vapor_tried" %in% colnames(RISK_red)) && "q34" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(vapor_tried = q34)}

if (!("vapor_use_30d" %in% colnames(RISK_red)) && "q35" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(vapor_use_30d = q35)}

if (!("vapor_access" %in% colnames(RISK_red)) && "q36" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(vapor_access = q36)}

if (!("smokeless_tobacco_30d" %in% colnames(RISK_red)) && "q37" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(smokeless_tobacco_30d = q37)}

if (!("cigar_use_30d" %in% colnames(RISK_red)) && "q38" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(cigar_use_30d = q38)}

if (!("tried_stop_tobacco_12m" %in% colnames(RISK_red)) && "q39" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(tried_stop_tobacco_12m = q39)}

if (!("alcohol_age" %in% colnames(RISK_red)) && "q40" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(alcohol_age = q40)}

if (!("alcohol_use_30d" %in% colnames(RISK_red)) && "q41" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(alcohol_use_30d = q41)}

if (!("alcohol_binging_30d" %in% colnames(RISK_red)) && "q42" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(alcohol_binging_30d = q42)}

if (!("drinks_in_row_30d" %in% colnames(RISK_red)) && "q43" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(drinks_in_row_30d = q43)}

if (!("alcohol_source_30d" %in% colnames(RISK_red)) && "q44" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(alcohol_source_30d = q44)}

if (!("marijuana" %in% colnames(RISK_red)) && "q45" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(marijuana = q45)}

if (!("marijuana_age" %in% colnames(RISK_red)) && "q46" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(marijuana_age = q46)}

if (!("marijuana_30d" %in% colnames(RISK_red)) && "q47" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(marijuana_30d = q47)}

if (!("marijuana_synth_30d" %in% colnames(RISK_red)) && "q48" %in% colnames(RISK_red)) {
  RISK_red <- RISK_red%>%
    rename(marijuana_synth_30d= q48)}

if (!("Mental_health_during_pandemic" %in% colnames(RISK_red)) && "q93" %in% colnames(RISK_red)) {
  RISK_red<- RISK_red%>%
    rename(Mental_health_during_pandemic= q93)}

if (!("Difficulty_concentrating" %in% colnames(RISK_red)) && "q98" %in% colnames(RISK_red)) {
  RISK_red<- RISK_red%>%
    rename(Difficulty_concentrating= q98)}

if (!("Current_mental_health" %in% colnames(RISK_red)) && "q85" %in% colnames(RISK_red)) {
  RISK_red<- RISK_red%>%
    rename(Current_mental_health= q85)}

if (!("Sex_of_sexual_contacts" %in% colnames(RISK_red)) && "q64" %in% colnames(RISK_red)) {
  RISK_red<- RISK_red%>%
    rename(Sex_of_sexual_contacts= q64)}

if (!("Sexual_identity" %in% colnames(RISK_red)) && "q65" %in% colnames(RISK_red)) {
  RISK_red<- RISK_red%>%
    rename(Sexual_identity= q65)}

# ---------------naming the levels of the categorical variables -------------

# RISK_red$age<-factor(RISK_red$age,ordered = TRUE, labels= c("12orYounger","13","14","15","16","17","18orOlder"))
# 
# RISK_red$raceeth<-factor(RISK_red$raceeth, labels= c("American/Alaskan Native","Asian", "Black or African American", "Native Pacific Islander", "White", "Hispanic/Latino", "Multiple-Hispanic/Latino", "Multiple-Non-Hispanic/Latino"))
# 
# RISK_red$sex<-factor(RISK_red$sex, labels= c("female", "male"))
# 
# RISK_red$grade<-factor(RISK_red$grade,ordered = TRUE, labels= c("9th", "10th", "11th", "12th", "undergraded or other"))
# 
# RISK_red$seat_belt<-factor(RISK_red$seat_belt,ordered = TRUE, labels= c("Never", "Rarely", "Sometimes", "Mostly", "Always"))
# 
# RISK_red$drinking_driver_30d<-factor(RISK_red$drinking_driver_30d,ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red$drinking_driving_30d<-factor(RISK_red$drinking_driving_30d,ordered = TRUE, labels= c("did not drive", "0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red$texting_driving_30d<-factor(RISK_red$texting_driving_30d,ordered = TRUE, labels= c("did not drive", "0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red$weapon_to_school_30d<-factor(RISK_red$weapon_to_school_30d, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))
# 
# RISK_red$gun_to_school_12m<-factor(RISK_red$gun_to_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))
# 
# RISK_red$absence_safety_concerns_30d<-factor(RISK_red$absence_safety_concerns_30d, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))
# 
# RISK_red$weapon_threatened_at_school_12m<-factor(RISK_red$weapon_threatened_at_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))
# 
# RISK_red$physical_fight_12m<-factor(RISK_red$physical_fight_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))
# 
# RISK_red$physical_fight_at_school_12m<-factor(RISK_red$physical_fight_at_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))
# 
# RISK_red$saw_attack<-factor(RISK_red$saw_attack, labels= c("Yes", "No"))
# 
# RISK_red$forced_sex<-factor(RISK_red$forced_sex, labels= c("Yes", "No"))
# 
# RISK_red$sexual_violence_12m<-factor(RISK_red$sexual_violence_12m,ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red$sexual_dating_violence_12m<-factor(RISK_red$sexual_dating_violence_12m,ordered = TRUE, labels= c("did not date","0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red$physical_dating_violence_12m<-factor(RISK_red$physical_dating_violence_12m,ordered = TRUE, labels= c("did not date","0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red$bullied_at_school_12m<-factor(RISK_red$bullied_at_school_12m, labels= c("Yes", "No"))
# 
# RISK_red$bullied_electronically_12m<-factor(RISK_red$bullied_electronically_12m, labels= c("Yes", "No"))
# 
# RISK_red$tried_smoking<-factor(RISK_red$tried_smoking, labels= c("Yes", "No"))
# 
# RISK_red$smoking_age<-factor(RISK_red$smoking_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))
# 
# RISK_red$smoking_30d<-factor(RISK_red$smoking_30d,ordered = TRUE, labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red$smoking_perday_30d<-factor(RISK_red$smoking_perday_30d,ordered = TRUE, labels= c("not smoked", "lass than 1", "1", "2 to 5","6 to 10", "10 to 20", "more than 20 cigarettes"))
# 
# RISK_red$vapor_tried<-factor(RISK_red$vapor_tried, labels= c("Yes", "No"))
# 
# RISK_red$vapor_use_30d<-factor(RISK_red$vapor_use_30d, ordered = TRUE, labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red$vapor_access<-factor(RISK_red$vapor_access, labels= c("not used", "friend or family", "vape/tobacco shop", "store", "kiosk", "internet", "store_stolen", "other"))
# 
# RISK_red$smokeless_tobacco_30d<-factor(RISK_red$smokeless_tobacco_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red$cigar_use_30d<-factor(RISK_red$cigar_use_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red$tried_stop_tobacco_12m<-factor(RISK_red$tried_stop_tobacco_12m, labels= c("Did not use", "Yes", "No"))
# 
# RISK_red$alcohol_age<-factor(RISK_red$alcohol_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))
# 
# RISK_red$alcohol_use_30d<-factor(RISK_red$alcohol_use_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red$alcohol_binging_30d<-factor(RISK_red$alcohol_binging_30d,ordered = TRUE, labels= c("0",  "1", "2" , "3 to 5","6 to 9", "10 to 19", "20 or more days"))
# 
# RISK_red$drinks_in_row_30d<-factor(RISK_red$drinks_in_row_30d,ordered = TRUE, labels= c("did not drink", "1 or 2", "3", "4", "5", "6 or 7", "8 or 9", "10 or more drinks"))
# 
# RISK_red$alcohol_source_30d<-factor(RISK_red$alcohol_source_30d, labels= c("no drink", "store","restaurant/bar/club", "public event","gave_someone_money", "someone gave me", "store/family_stolen",  "other"))
# 
# RISK_red$marijuana<-factor(RISK_red$marijuana,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 to 99", "100 times or more"))
# 
# RISK_red$marijuana_age<-factor(RISK_red$marijuana_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))
# 
# RISK_red$marijuana_30d<-factor(RISK_red$marijuana_30d,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 times or more"))
# 
# RISK_red$marijuana_synth_30d<-factor(RISK_red$marijuana_synth_30d,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 times or more"))
