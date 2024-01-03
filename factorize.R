# factorization function

#----**this code is modified with the help of AI **------ ##

# Function to safely convert to factor if the column exists
safely_convert_to_factor <- function(df, column_name, ordered = FALSE) {
  if (column_name %in% names(df)) {
    df[[column_name]] <- factor(df[[column_name]], ordered = ordered)
  }
}

# Main function to apply factor conversions
convert_columns_to_factors <- function(dataframe_name) {
  # Ensure the dataframe exists in the environment
  if (!exists(dataframe_name)) {
    stop("Dataframe does not exist in the current environment.")
  }
  
  # Retrieve the dataframe
  df <- get(dataframe_name)
  
  ordered_columns <- c(
    "q1", "age",   # q1 renamed to age
    "q3", "grade", # q3 renamed to grade
    "q8", "seat_belt",  # q8 renamed to seat_belt
    "q9", "drinking_driver_30d", # q9 renamed to drinking_driver_30d
    "q10", "drinking_driving_30d", # q10 renamed to drinking_driving_30d
    "q11", "texting_driving_30d", # q11 renamed to texting_driving_30d
    "q12", "weapon_to_school_30d", # q12 renamed to weapon_to_school_30d
    "q13", "gun_to_school_12m", # q13 renamed to gun_to_school_12m
    "q14", "absence_safety_concerns_30d", # q14 renamed to absence_safety_concerns_30d
    "q15", "weapon_threatened_at_school_12m", # q15 renamed to weapon_threatened_at_school_12m
    "q16", "physical_fight_12m", # q16 renamed to physical_fight_12m
    "q17", "physical_fight_at_school_12m", # q17 renamed to physical_fight_at_school_12m
    "q20", "sexual_violence_12m", # q20 renamed to sexual_violence_12m
    "q21", "sexual_dating_violence_12m", # q21 renamed to sexual_dating_violence_12m
    "q22", "physical_dating_violence_12m", # q22 renamed to physical_dating_violence_12m
    "q31", "smoking_age", # q31 renamed to smoking_age
    "q32", "smoking_30d", # q32 renamed to smoking_30d
    "q33", "smoking_perday_30d", # q33 renamed to smoking_perday_30d
    "q35", "vapor_use_30d", # q35 renamed to vapor_use_30d
    "q37", "smokeless_tobacco_30d", # q37 renamed to smokeless_tobacco_30d
    "q38", "cigar_use_30d", # q38 renamed to cigar_use_30d
    "q40", "alcohol_age", # q40 renamed to alcohol_age
    "q41", "alcohol_use_30d", # q41 renamed to alcohol_use_30d
    "q42", "alcohol_binging_30d", # q42 renamed to alcohol_binging_30d
    "q43", "drinks_in_row_30d", # q43 renamed to drinks_in_row_30d
    "q46", "marijuana_age", # q46 renamed to marijuana_age
    "q47", "marijuana_30d", # q47 renamed to marijuana_30d
    "q48", "marijuana_synth_30d", # q48 renamed to marijuana_synth_30d
    "q93", "Mental_health_during_pandemic", # q93 renamed to Mental_health_during_pandemic
    "q98", "Difficulty_concentrating", # q98 renamed to Difficulty_concentrating
    "q85", "Current_mental_health", # q85 renamed to Current_mental_health
    "q58", "q59", "q60", "q66", "q68", "q69", "q70", "q71", "q72", "q73",
    "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q84", "q86",
    "q88", "q89", "q90", "q91", "q92", "q95", "q96", "q97", "q99"
  )
  
  
  regular_columns <- c(
    "q2", "sex", # q2 renamed to sex
    "q6orig", "height_feet", # q6orig renamed to height_feet
    "q7orig", "weight_pounds", # q7orig renamed to weight_pounds
    "q18", "saw_attack", # q18 renamed to saw_attack
    "q19", "forced_sex", # q19 renamed to forced_sex
    "q23", "bullied_at_school_12m", # q23 renamed to bullied_at_school_12m
    "q24", "bullied_electronically_12m", # q24 renamed to bullied_electronically_12m
    "q30", "tried_smoking", # q30 renamed to tried_smoking
    "q34", "vapor_tried", # q34 renamed to vapor_tried
    "q36", "vapor_access", # q36 renamed to vapor_access
    "q39", "tried_stop_tobacco_12m", # q39 renamed to tried_stop_tobacco_12m
    "q44", "alcohol_source_30d", # q44 renamed to alcohol_source_30d
    "q45", "marijuana", # q45 renamed to marijuana
    "q64", "Sex_of_sexual_contacts", # q64 renamed to Sex_of_sexual_contacts
    "raceeth", "q55", "q56", "q57", "q61", "q62", "q63", "q65", "q67", 
    "q87", "q94", "stratum", "psu"
  )
  
  # Apply conversions
  for (column_name in ordered_columns) {
    safely_convert_to_factor(df, column_name, TRUE)
  }
  for (column_name in regular_columns) {
    safely_convert_to_factor(df, column_name)
  }
  
  # Return the modified dataframe
  return(df)
}
