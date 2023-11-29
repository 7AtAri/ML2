# ML2 Project

TODOS:
- find dataset (between 500 and 2000 observations, at least 5 predictor variables and an outcome variable -> supervised)
- compare 2 ML methods (1 method must be from the ML2 course) in R
- write report ("Any section where you have used AI software should be referenced")

## email:
 information on or before **Friday 8th December**. Include in the email:
 
- which students are in your group,
- where you have found the data,
- a simple synopsis of the dataset should be included such as the number of observations, the variables with their data type (nominal, ordinal, discrete or continuous).
- your chosen ML methods.
- Do not attach the data, but do have the file available to send, if requested, in a form that can be
easily read into R as a data frame.

## specifics:
- data into three parts: 60% training data, 20% validation data and 20% test data

### Dataset Ideas:

- https://www.kaggle.com/datasets/keremkurt/diversity-equity-and-inclusion-measures-dataset
- https://www.kaggle.com/datasets/vencerlanz09/lgbt-tweets
- https://www.kaggle.com/datasets/maddalenamariano/eu-lgbti-survey-2020 -> may not be suited for task (aggregated observations)
- https://www.kaggle.com/datasets/ruslankl/european-union-lgbt-survey-2012?select=LGBT_Survey_TransgenderSpecificQuestions.csv -> not suited for task?
- https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/FXXLTS  (weird format)
- www.lgbtdata.com/data.html
- https://socialjusticesexuality.com/projects/ (sav format + some conversion error that seems harder to fix)

### Regression / Classification methods Ideas:
- 1st model from ML2 course: ?
- 2nd model: ?

Your two ML methods should be from the following list, one must be from ML2.

- Logistic regression (ML1)
- Ridge regression and/or lasso regression (ML1)
- Tree models (ML1)
- One or more ensemble method (ML1)
- Non-linear models (e.g spline smoothing) (ML2)
- Generalised additive models (ML2)
- Linear (and/or quadratic) discriminant analysis (ML2)
- Naive Bayes classification (ML2)
- Support vector machine (ML2)
- Support vector regression (An extension SVM applied to regression data) (ML2) 
- Projection pursuit regression (ML2)

Note that two bullet points should be chosen, so for example ridge regression and the lasso count as two variants of one method.

for classification:
Most Interpretable: Logistic Regression, Naive Bayes, and Linear Discriminant Analysis are often considered highly interpretable.
Moderately Interpretable: Decision Trees, especially shallow ones, and Generalized Additive Models provide a good balance between interpretability and complexity.
Moderate to Low Interpretable: Support Vector Machines and Support Vector Regression, as well as ensemble methods like Random Forests or Gradient Boosting, can be less interpretable, especially as model complexity increases.

### Report: as pdf

**deadline: 9th of january**
 project report will include:
 
- a short description of your data,
- a short mathematical overview of the two ML methods used,
- a description of your fitting process including, a summary of how you arrived at your final model, the choice of hyperparameters and how you made this choice,
- an appropriate assessment of the predicted values and a fair comparison of the two methods using the test data.
- appropriate graphical presentation.
- a bibliography of sources used, referenced in the main text.

## submission
 to submit your work, you should upload in Moodle:
- your report in a standard format (such as PDF format),
- your data set and
- your R code in a script file. The R script should include code to read in the data, indicate the main parts using comments and run without errors.
