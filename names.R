
# ------ saving the new df ---------------

# library(readr)

# current_directory <- getwd()

# current working directory
# print(current_directory)

# write.csv(RISK_2000, file="../RISK_2000.csv",  row.names = FALSE)




library(dplyr)


## ------ naming the variables --------------

if (!("age" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(age = q1)}

if (!("sex" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(sex = q2)}

if (!("grade" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(grade = q3)}

if (!("height_feet" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(height_feet = q6)}

if (!("weight_pounds" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(weight_pounds = q7)}

if (!("seat_belt" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(seat_belt = q8)}

if (!("drinking_driver_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(drinking_driver_30d = q9)}

if (!("drinking_driving_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(drinking_driving_30d = q10)}

if (!("texting_driving_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(texting_driving_30d = q11)}

if (!("weapon_to_school_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(weapon_to_school_30d = q12)}

if (!("gun_to_school_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(gun_to_school_12m = q13)}

if (!("absence_safety_concerns_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(absence_safety_concerns_30d = q14)}

if (!("weapon_threatened_at_school_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(weapon_threatened_at_school_12m = q15)}

if (!("physical_fight_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(physical_fight_12m = q16)}

if (!("physical_fight_at_school_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(physical_fight_at_school_12m = q17)}

if (!("saw_attack" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(saw_attack = q18)}

if (!("forced_sex" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(forced_sex = q19)}

if (!("sexual_violence_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(sexual_violence_12m = q20)}

if (!("sexual_dating_violence_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(sexual_dating_violence_12m = q21)}

if (!("physical_dating_violence_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(physical_dating_violence_12m = q22)}

if (!("bullied_at_school_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(bullied_at_school_12m = q23)}

if (!("bullied_electronically_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(bullied_electronically_12m = q24)}

if (!("tried_smoking" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(tried_smoking = q30)}

if (!("smoking_age" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(smoking_age = q31)}

if (!("smoking_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(smoking_30d = q32)}

if (!("smoking_perday_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(smoking_perday_30d = q33)}

if (!("vapor_tried" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(vapor_tried = q34)}

if (!("vapor_use_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(vapor_use_30d = q35)}

if (!("vapor_access" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(vapor_access = q36)}

if (!("smokeless_tobacco_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(smokeless_tobacco_30d = q37)}

if (!("cigar_use_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(cigar_use_30d = q38)}

if (!("tried_stop_tobacco_12m" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(tried_stop_tobacco_12m = q39)}

if (!("alcohol_age" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(alcohol_age = q40)}

if (!("alcohol_use_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(alcohol_use_30d = q41)}

if (!("alcohol_binging_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(alcohol_binging_30d = q42)}

if (!("drinks_in_row_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(drinks_in_row_30d = q43)}

if (!("alcohol_source_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(alcohol_source_30d = q44)}

if (!("marijuana" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(marijuana = q45)}

if (!("marijuana_age" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(marijuana_age = q46)}

if (!("marijuana_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(marijuana_30d = q47)}

if (!("marijuana_synth_30d" %in% colnames(RISK))) {
  RISK <- RISK%>%
    rename(marijuana_synth_30d= q48)}



# ---------------naming the levels of the categorical variables -------------

RISK$age<-factor(RISK$age,ordered = TRUE, labels= c("12orYounger","13","14","15","16","17","18orOlder"))

RISK$raceeth<-factor(RISK$raceeth, labels= c("American/Alaskan Native","Asian", "Black or African American", "Native Pacific Islander", "White", "Hispanic/Latino", "Multiple-Hispanic/Latino", "Multiple-Non-Hispanic/Latino"))

RISK$sex<-factor(RISK$sex, labels= c("female", "male"))

RISK$grade<-factor(RISK$grade,ordered = TRUE, labels= c("9th", "10th", "11th", "12th", "undergraded or other"))

RISK$seat_belt<-factor(RISK$seat_belt,ordered = TRUE, labels= c("Never", "Rarely", "Sometimes", "Mostly", "Always"))

RISK$drinking_driver_30d<-factor(RISK$drinking_driver_30d,ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more times"))

RISK$drinking_driving_30d<-factor(RISK$drinking_driving_30d,ordered = TRUE, labels= c("did not drive", "0", "1", "2 or 3", "4 or 5", "6 or more times"))

RISK$texting_driving_30d<-factor(RISK$texting_driving_30d,ordered = TRUE, labels= c("did not drive", "0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))

RISK$weapon_to_school_30d<-factor(RISK$weapon_to_school_30d, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))

RISK$gun_to_school_12m<-factor(RISK$gun_to_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))

RISK$absence_safety_concerns_30d<-factor(RISK$absence_safety_concerns_30d, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more days"))

RISK$weapon_threatened_at_school_12m<-factor(RISK$weapon_threatened_at_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))

RISK$physical_fight_12m<-factor(RISK$physical_fight_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))

RISK$physical_fight_at_school_12m<-factor(RISK$physical_fight_at_school_12m, ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or 7", "8 or 9", "10 or 11", "12 or more times"))

RISK$saw_attack<-factor(RISK$saw_attack, labels= c("Yes", "No"))

RISK$forced_sex<-factor(RISK$forced_sex, labels= c("Yes", "No"))

RISK$sexual_violence_12m<-factor(RISK$sexual_violence_12m,ordered = TRUE, labels= c("0", "1", "2 or 3", "4 or 5", "6 or more times"))

RISK$sexual_dating_violence_12m<-factor(RISK$sexual_dating_violence_12m,ordered = TRUE, labels= c("did not date","0", "1", "2 or 3", "4 or 5", "6 or more times"))

RISK$physical_dating_violence_12m<-factor(RISK$physical_dating_violence_12m,ordered = TRUE, labels= c("did not date","0", "1", "2 or 3", "4 or 5", "6 or more times"))

RISK$bullied_at_school_12m<-factor(RISK$bullied_at_school_12m, labels= c("Yes", "No"))

RISK$bullied_electronically_12m<-factor(RISK$bullied_electronically_12m, labels= c("Yes", "No"))

RISK$tried_smoking<-factor(RISK$tried_smoking, labels= c("Yes", "No"))

RISK$smoking_age<-factor(RISK$smoking_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))

RISK$smoking_30d<-factor(RISK$smoking_30d,ordered = TRUE, labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))

RISK$smoking_perday_30d<-factor(RISK$smoking_perday_30d,ordered = TRUE, labels= c("not smoked", "lass than 1", "1", "2 to 5","6 to 10", "10 to 20", "more than 20 cigarettes"))

RISK$vapor_tried<-factor(RISK$vapor_tried, labels= c("Yes", "No"))

RISK$vapor_use_30d<-factor(RISK$vapor_use_30d, ordered = TRUE, labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))

RISK$vapor_access<-factor(RISK$vapor_access, labels= c("not used", "friend or family", "vape/tobacco shop", "store", "kiosk", "internet", "store_stolen", "other"))

RISK$smokeless_tobacco_30d<-factor(RISK$smokeless_tobacco_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))

RISK$cigar_use_30d<-factor(RISK$cigar_use_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))

RISK$tried_stop_tobacco_12m<-factor(RISK$tried_stop_tobacco_12m, labels= c("Did not use", "Yes", "No"))

RISK$alcohol_age<-factor(RISK$alcohol_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))

RISK$alcohol_use_30d<-factor(RISK$alcohol_use_30d, ordered = TRUE,labels= c("0", "1 or 2", "3 to 5", "6 to 9", "10 to 19", "20 to 29", "all 30 days"))

RISK$alcohol_binging_30d<-factor(RISK$alcohol_binging_30d,ordered = TRUE, labels= c("0",  "1", "2" , "3 to 5","6 to 9", "10 to 19", "20 or more days"))

RISK$drinks_in_row_30d<-factor(RISK$drinks_in_row_30d,ordered = TRUE, labels= c("did not drink", "1 or 2", "3", "4", "5", "6 or 7", "8 or 9", "10 or more drinks"))

RISK$alcohol_source_30d<-factor(RISK$alcohol_source_30d, labels= c("no drink", "store","restaurant/bar/club", "public event","gave_someone_money", "someone gave me", "store/family_stolen",  "other"))

RISK$marijuana<-factor(RISK$marijuana,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 to 99", "100 times or more"))

RISK$marijuana_age<-factor(RISK$marijuana_age,ordered = TRUE, labels= c("never tried","8 or younger", "9 or 10", "11 or 12", "13 or 14", "15 or 16", "17 or older"))

RISK$marijuana_30d<-factor(RISK$marijuana_30d,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 times or more"))

RISK$marijuana_synth_30d<-factor(RISK$marijuana_synth_30d,ordered = TRUE, labels= c("0",  "1 or 2" , "3 to 9", "10 to 19", "20 to 39", "40 times or more"))
