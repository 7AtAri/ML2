# ---- Load needed libraries -----------------------------------------------------


library(readr)
library(inspectdf)
library(corrplot)
library(ggplot2)
library(Hmisc)
library(dplyr)

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
RISK <- read_csv("datasets/National YRBS Datasets/XXHq.csv")

RISK_qn <- read_csv("datasets/National YRBS Datasets/XXHqn.csv")

# breed_lab <- subset(read_csv("petdata/PetFinder-BreedLabels.csv",
#                             show_col_types = FALSE), select = -c(Type))
# color_lab <- read_csv("petdata/PetFinder-ColorLabels.csv",
#                      show_col_types = FALSE)
#state_lab <- read_csv("petdata/PetFinder-StateLabels.csv",
#                      show_col_types = FALSE)


# ---- Extract json data and dump it into the dataframe -----------------------


# Path to the folder containing JSON files
# folder_path <- "petdata/train_sentiment"

# Get a list of JSON file names in the folder
# json_files <- list.files(folder_path, pattern = ".json$", full.names = TRUE)

# Create an empty data frame with columns for "score" and "magnitude"
# sentiment_df <- data.frame(
#  SentimentScore = numeric(),
#  SentimentMagnitude = numeric(),
#  PetID = character(),
#  stringsAsFactors = FALSE
#)

# Process each JSON file
#for (json_file in json_files) {
  # Read the JSON file as text
#  json_text <- readLines(json_file, warn = FALSE)
  # Parse the JSON text:
#  json_data <- fromJSON(txt = json_text)
  
  # Extract document-level sentiment
#  score <- json_data$documentSentiment$score
#  magnitude <- json_data$documentSentiment$magnitude
  
  # Extract the file name:
#  file_name <- basename(json_file)
#  pattern <- str_extract(file_name, "[A-Za-z0-9]+")
  
  # Create a data frame for document-level sentiment
#  df_new_row <- data.frame(SentimentScore = score,
#                           SentimentMagnitude = magnitude,
#                           PetID = pattern)
#  sentiment_df <- rbind(sentiment_df, df_new_row)
#}



# ---- Merge labels and add data to df ------------


# Add the sentiment score and maginitude to the petdata
# petdata <- merge(petdata, sentiment_df, by = "PetID",
#                 all.x = TRUE, sort = FALSE)

# Merge the breed, color, and state labels to the petdata
# petdata <- merge(petdata, breed_lab, by.x = "Breed1", by.y = "BreedID",
#                  all.x = TRUE, sort = FALSE)
# names(petdata)[names(petdata) == "Breed1"] <- "BreedID1"


# ---- factorize categorical variables ----------------------------------------

# examples:

#petdata$SentimentScore_fac<-as.factor(petdata$SentimentScore)

#petdata$SentimentScore_fac <- cut(petdata$SentimentScore,
#                                  breaks = c(-1, -0.4, -0.1, 0.1, 0.4, 1),
#                                  include.lowest = T,
#                                  right = F)
#levels(petdata$SentimentScore_fac)<-c("negative", "moderately negative", "neutral", "moderately positive", "positive")
#petdata$ColorID1<-as.factor(petdata$ColorID1)


# ---- Data preparation -------------------------------------------


# ---- helper functions ------------------------------------------------------





# ---- Clean up the environment -----------------------------------------------


# rm(...) remove unneeded variables after the setup

