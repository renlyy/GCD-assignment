# Getting and Cleaning Data Assignment
This repo is for the assignment of Getting and Cleaning Data course. 

## What to do
We should create one R script called run_analysis. R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## List of files
- `README.md` : explains the analysis files
- `run_analysis.R` : R script that collects and gathers tidy dataset we need
- `tidydata.txt` : Tidy data set generated from run_analysis.R
- `CodeBook.md` : Code book that describes all the variables, summaries calculated, along with units, and any other relevant information

## Required packages
- `dplyr`
- `tidyr`
> If you don't have it, you can install it with `install.packages("dplyr")` `install.packages("tidyr")` before you run the code.
