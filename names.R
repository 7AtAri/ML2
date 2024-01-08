# ------- set seed to ensure reproducability --------------------------

set.seed(0)  # set the seed

# ------ saving the new df ---------------

library(readr)

# current_directory <- getwd()

# current working directory
# print(current_directory)

# write.csv(RISK_red_new_imp_s5, file="../RISK_red_new_imp_s5.csv",  row.names = FALSE)
#write.csv(RISK_red_new_new, file="../RISK_red_new_new.csv")


library(dplyr)


## ------ naming the variables --------------

if (!("age" %in% colnames(RISK_red_new)) && "q1" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new %>%
    rename(age = q1)
}

if (!("sex" %in% colnames(RISK_red_new)) && "q2" %in% colnames(RISK_red_new)){
  RISK_red_new <- RISK_red_new%>%
    rename(sex = q2)}

if (!("grade" %in% colnames(RISK_red_new))&& "q3" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(grade = q3)}

if (!("height_feet" %in% colnames(RISK_red_new)) && "q6" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(height_feet = q6)}

if (!("weight_pounds" %in% colnames(RISK_red_new))&& "q7" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(weight_pounds = q7)}

if (!("seat_belt" %in% colnames(RISK_red_new)) && "q8" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(seat_belt = q8)}

if (!("drinking_driver_30d" %in% colnames(RISK_red_new)) && "q9" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(drinking_driver_30d = q9)}

if (!("drinking_driving_30d" %in% colnames(RISK_red_new)) && "q10" %in% colnames(RISK_red_new)){
  RISK_red_new <- RISK_red_new%>%
    rename(drinking_driving_30d = q10)}

if (!("texting_driving_30d" %in% colnames(RISK_red_new)) && "q11" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(texting_driving_30d = q11)}

if (!("weapon_to_school_30d" %in% colnames(RISK_red_new)) && "q12" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(weapon_to_school_30d = q12)}

if (!("gun_to_school_12m" %in% colnames(RISK_red_new)) && "q13" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(gun_to_school_12m = q13)}

if (!("absence_safety_concerns_30d" %in% colnames(RISK_red_new)) && "q14" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(absence_safety_concerns_30d = q14)}

if (!("weapon_threatened_at_school_12m" %in% colnames(RISK_red_new)) && "q15" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(weapon_threatened_at_school_12m = q15)}

if (!("physical_fight_12m" %in% colnames(RISK_red_new)) && "q16" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(physical_fight_12m = q16)}

if (!("physical_fight_at_school_12m" %in% colnames(RISK_red_new)) && "q17" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(physical_fight_at_school_12m = q17)}

if (!("saw_attack" %in% colnames(RISK_red_new)) && "q18" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(saw_attack = q18)}

if (!("forced_sex" %in% colnames(RISK_red_new)) && "q19" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(forced_sex = q19)}

if (!("sexual_violence_12m" %in% colnames(RISK_red_new)) && "q20" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(sexual_violence_12m = q20)}

if (!("sexual_dating_violence_12m" %in% colnames(RISK_red_new)) && "q21" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(sexual_dating_violence_12m = q21)}

if (!("physical_dating_violence_12m" %in% colnames(RISK_red_new)) && "q22" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(physical_dating_violence_12m = q22)}

if (!("bullied_at_school_12m" %in% colnames(RISK_red_new)) && "q23" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(bullied_at_school_12m = q23)}

if (!("bullied_electronically_12m" %in% colnames(RISK_red_new)) && "q24" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(bullied_electronically_12m = q24)}

if (!("tried_smoking" %in% colnames(RISK_red_new)) && "q30" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(tried_smoking = q30)}

if (!("smoking_age" %in% colnames(RISK_red_new)) && "q31" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(smoking_age = q31)}

if (!("smoking_30d" %in% colnames(RISK_red_new)) && "q32" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(smoking_30d = q32)}

if (!("smoking_perday_30d" %in% colnames(RISK_red_new)) && "q33" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(smoking_perday_30d = q33)}

if (!("vapor_tried" %in% colnames(RISK_red_new)) && "q34" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(vapor_tried = q34)}

if (!("vapor_use_30d" %in% colnames(RISK_red_new)) && "q35" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(vapor_use_30d = q35)}

if (!("vapor_access" %in% colnames(RISK_red_new)) && "q36" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(vapor_access = q36)}

if (!("smokeless_tobacco_30d" %in% colnames(RISK_red_new)) && "q37" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(smokeless_tobacco_30d = q37)}

if (!("cigar_use_30d" %in% colnames(RISK_red_new)) && "q38" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(cigar_use_30d = q38)}

if (!("tried_stop_tobacco_12m" %in% colnames(RISK_red_new)) && "q39" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(tried_stop_tobacco_12m = q39)}

if (!("alcohol_age" %in% colnames(RISK_red_new)) && "q40" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(alcohol_age = q40)}

if (!("alcohol_use_30d" %in% colnames(RISK_red_new)) && "q41" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(alcohol_use_30d = q41)}

if (!("alcohol_binging_30d" %in% colnames(RISK_red_new)) && "q42" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(alcohol_binging_30d = q42)}

if (!("drinks_in_row_30d" %in% colnames(RISK_red_new)) && "q43" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(drinks_in_row_30d = q43)}

if (!("alcohol_source_30d" %in% colnames(RISK_red_new)) && "q44" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(alcohol_source_30d = q44)}

if (!("marijuana" %in% colnames(RISK_red_new)) && "q45" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(marijuana = q45)}

if (!("marijuana_age" %in% colnames(RISK_red_new)) && "q46" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(marijuana_age = q46)}

if (!("marijuana_30d" %in% colnames(RISK_red_new)) && "q47" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(marijuana_30d = q47)}

if (!("marijuana_synth_30d" %in% colnames(RISK_red_new)) && "q48" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(marijuana_synth_30d= q48)}

if (!("times_pain_meds_without_perscription" %in% colnames(RISK_red_new)) && "q49" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(times_pain_meds_without_perscription= q49)}

if (!("age_group_first_sex" %in% colnames(RISK_red_new)) && "q58" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(age_group_first_sex = q58)}

if (!("times_breakfast_7d" %in% colnames(RISK_red_new)) && "q76" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(times_breakfast_7d = q76)}

if (!("avg_h_sleep" %in% colnames(RISK_red_new)) && "q86" %in% colnames(RISK_red_new)) {
  RISK_red_new <- RISK_red_new%>%
    rename(avg_h_sleep = q86)}

if (!("Mental_health_during_pandemic" %in% colnames(RISK_red_new)) && "q93" %in% colnames(RISK_red_new)) {
  RISK_red_new<- RISK_red_new%>%
    rename(Mental_health_during_pandemic= q93)}

if (!("Difficulty_concentrating" %in% colnames(RISK_red_new)) && "q98" %in% colnames(RISK_red_new)) {
  RISK_red_new<- RISK_red_new%>%
    rename(Difficulty_concentrating= q98)}

if (!("Current_mental_health" %in% colnames(RISK_red_new)) && "q85" %in% colnames(RISK_red_new)) {
  RISK_red_new<- RISK_red_new%>%
    rename(Current_mental_health= q85)}

if (!("Sex_of_sexual_contacts" %in% colnames(RISK_red_new)) && "q64" %in% colnames(RISK_red_new)) {
  RISK_red_new<- RISK_red_new%>%
    rename(Sex_of_sexual_contacts= q64)}

if (!("Sexual_identity" %in% colnames(RISK_red_new)) && "q65" %in% colnames(RISK_red_new)) {
  RISK_red_new<- RISK_red_new%>%
    rename(Sexual_identity= q65)}

# ---------------naming the levels of the categorical variables -------------

# RISK_red_new$age<-factor(RISK_red_new$age,ordered = TRUE, labels= c("12orYounger","13","14","15","16","17","18orOlder"))
# 
# RISK_red_new$raceeth<-factor(RISK_red_new$raceeth, labels= c("American/Alaskan Native","Asian", "Black or African American", "Native Pacific Islander", "White", "Hispanic/Latino", "Multiple-Hispanic/Latino", "Multiple-Non-Hispanic/Latino"))
# 
# RISK_red_new$sex<-factor(RISK_red_new$sex, labels= c("female", "male"))
# 
# RISK_red_new$grade<-factor(RISK_red_new$grade,ordered = TRUE, labels= c("9th", "10th", "11th", "12th", "undergraded or other"))
# 
# RISK_red_new$seat_belt<-factor(RISK_red_new$seat_belt,ordered = TRUE, labels= c("Never", "Rarely", "Sometimes", "Mostly", "Always"))
# 
# RISK_red_new$drinking_driver_30d<-factor(RISK_red_new$drinking_driver_30d,ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red_new$drinking_driving_30d<-factor(RISK_red_new$drinking_driving_30d,ordered = TRUE, labels= c("did not drive", "0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red_new$texting_driving_30d<-factor(RISK_red_new$texting_driving_30d,ordered = TRUE, labels= c("did not drive", "0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red_new$weapon_to_school_30d<-factor(RISK_red_new$weapon_to_school_30d, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))
# 
# RISK_red_new$gun_to_school_12m<-factor(RISK_red_new$gun_to_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))
# 
# RISK_red_new$absence_safety_concerns_30d<-factor(RISK_red_new$absence_safety_concerns_30d, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))
# 
# RISK_red_new$weapon_threatened_at_school_12m<-factor(RISK_red_new$weapon_threatened_at_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))
# 
# RISK_red_new$physical_fight_12m<-factor(RISK_red_new$physical_fight_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))
# 
# RISK_red_new$physical_fight_at_school_12m<-factor(RISK_red_new$physical_fight_at_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))
# 
# RISK_red_new$saw_attack<-factor(RISK_red_new$saw_attack, labels= c("Yes", "No"))
# 
# RISK_red_new$forced_sex<-factor(RISK_red_new$forced_sex, labels= c("Yes", "No"))
# 
# RISK_red_new$sexual_violence_12m<-factor(RISK_red_new$sexual_violence_12m,ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red_new$sexual_dating_violence_12m<-factor(RISK_red_new$sexual_dating_violence_12m,ordered = TRUE, labels= c("did not date","0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red_new$physical_dating_violence_12m<-factor(RISK_red_new$physical_dating_violence_12m,ordered = TRUE, labels= c("did not date","0", "1", "2 or 3", "4 or 5", "6 or more times"))
# 
# RISK_red_new$bullied_at_school_12m<-factor(RISK_red_new$bullied_at_school_12m, labels= c("Yes", "No"))
# 
# RISK_red_new$bullied_electronically_12m<-factor(RISK_red_new$bullied_electronically_12m, labels= c("Yes", "No"))
# 
# RISK_red_new$tried_smoking<-factor(RISK_red_new$tried_smoking, labels= c("Yes", "No"))
# 
# RISK_red_new$smoking_age<-factor(RISK_red_new$smoking_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))
# 
# RISK_red_new$smoking_30d<-factor(RISK_red_new$smoking_30d,ordered = TRUE, labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red_new$smoking_perday_30d<-factor(RISK_red_new$smoking_perday_30d,ordered = TRUE, labels= c("not smoked", "lass than 1", "1", "2 to 5","6 to 10", "10 to 20", "more than 20 cigarettes"))
# 
# RISK_red_new$vapor_tried<-factor(RISK_red_new$vapor_tried, labels= c("Yes", "No"))
# 
# RISK_red_new$vapor_use_30d<-factor(RISK_red_new$vapor_use_30d, ordered = TRUE, labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red_new$vapor_access<-factor(RISK_red_new$vapor_access, labels= c("not used", "friend or family", "vape/tobacco shop", "store", "kiosk", "internet", "store_stolen", "other"))
# 
# RISK_red_new$smokeless_tobacco_30d<-factor(RISK_red_new$smokeless_tobacco_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red_new$cigar_use_30d<-factor(RISK_red_new$cigar_use_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red_new$tried_stop_tobacco_12m<-factor(RISK_red_new$tried_stop_tobacco_12m, labels= c("Did not use", "Yes", "No"))
# 
# RISK_red_new$alcohol_age<-factor(RISK_red_new$alcohol_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))
# 
# RISK_red_new$alcohol_use_30d<-factor(RISK_red_new$alcohol_use_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))
# 
# RISK_red_new$alcohol_binging_30d<-factor(RISK_red_new$alcohol_binging_30d,ordered = TRUE, labels= c("0",  "1", "2" , "3 to 5","6 to 9", "10 to 19", "20 or more days"))
# 
# RISK_red_new$drinks_in_row_30d<-factor(RISK_red_new$drinks_in_row_30d,ordered = TRUE, labels= c("did not drink", "1 or 2", "3", "4", "5", "6 or 7", "8 or 9", "10 or more drinks"))
# 
# RISK_red_new$alcohol_source_30d<-factor(RISK_red_new$alcohol_source_30d, labels= c("no drink", "store","restaurant/bar/club", "public event","gave_someone_money", "someone gave me", "store/family_stolen",  "other"))
# 
# RISK_red_new$marijuana<-factor(RISK_red_new$marijuana,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 to 99", "100 times or more"))
# 
# RISK_red_new$marijuana_age<-factor(RISK_red_new$marijuana_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))
# 
# RISK_red_new$marijuana_30d<-factor(RISK_red_new$marijuana_30d,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 times or more"))
# 
# RISK_red_new$marijuana_synth_30d<-factor(RISK_red_new$marijuana_synth_30d,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 times or more"))
