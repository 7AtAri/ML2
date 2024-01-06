setLevels_train <- function(train_data, test_data){
  for (col_name in names(train_data)) {
  if (is.factor(train_data[[col_name]])) {
    # Set the levels in the test data to match the training data
    test_data[[col_name]] <- factor(test_data[[col_name]], levels = levels(train_data[[col_name]]))
  }
  }
  return (test_data)
}