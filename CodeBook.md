# Code Book
This code book is to describe all the variables, summary calculated, along with units, and any other relevant information.

## About Resource data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 6 activities(walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone(Samsung Galaxy S II) on waist.

## About File Used
- `features.txt` : Names of 561 features calculated
- `activity_labels` : Labels of 6 activities(walking, walking upstairs, walking downstairs, sitting, standing, laying)
- `X_test.txt` : 2947 observations of 561 features
- `y_test.txt` : Vector of 2947 integers, that indicates related activity of `X_test.txt`
- `subject_test.txt` : Vector of 2947 integers, that indicates related volunteer of `X_test.txt`
- `X_train.txt` : 7352 observations of 561 features
- `y_train.txt` : Vector of 7352 integers, that indicates related activity of `X_train.txt`
- `subject_train.txt` : Vector of 7352 integers, that indicates related volunteer of `X_train.txt`

## Steps to get the data
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Variables
- `subject` : ID of volunteer
- `activity` : Activity name
- Other variables : Mean of each variable

## Measured variables
- timeBodyAccelerationMean-X
- timeBodyAccelerationMean-Y
- timeBodyAccelerationMean-Z
- timeBodyAccelerationSD-X
- timeBodyAccelerationSD-Y
- timeBodyAccelerationSD-Z
- timeGravityAccelerationMean-X
- timeGravityAccelerationMean-Y
- timeGravityAccelerationMean-Z
- timeGravityAccelerationSD-X
- timeGravityAccelerationSD-Y
- timeGravityAccelerationSD-Z
- timeBodyAccelerationJerkMean-X
- timeBodyAccelerationJerkMean-Y
- timeBodyAccelerationJerkMean-Z
- timeBodyAccelerationJerkSD-X
- timeBodyAccelerationJerkSD-Y
- timeBodyAccelerationJerkSD-Z
- timeBodyGyroscopeMean-X
- timeBodyGyroscopeMean-Y
- timeBodyGyroscopeMean-Z
- timeBodyGyroscopeSD-X
- timeBodyGyroscopeSD-Y
- timeBodyGyroscopeSD-Z
- timeBodyGyroscopeJerkMean-X
- timeBodyGyroscopeJerkMean-Y
- timeBodyGyroscopeJerkMean-Z
- timeBodyGyroscopeJerkSD-X
- timeBodyGyroscopeJerkSD-Y
- timeBodyGyroscopeJerkSD-Z
- timeBodyAccelerationMagnitudeMean
- timeBodyAccelerationMagnitudeSD
- timeGravityAccelerationMagnitudeMean
- timeGravityAccelerationMagnitudeSD
- timeBodyAccelerationJerkMagnitudeMean
- timeBodyAccelerationJerkMagnitudeSD
- timeBodyGyroscopeMagnitudeMean
- timeBodyGyroscopeMagnitudeSD
- timeBodyGyroscopeJerkMagnitudeMean
- timeBodyGyroscopeJerkMagnitudeSD
- frequencyBodyAccelerationMean-X
- frequencyBodyAccelerationMean-Y
- frequencyBodyAccelerationMean-Z
- frequencyBodyAccelerationSD-X
- frequencyBodyAccelerationSD-Y
- frequencyBodyAccelerationSD-Z
- frequencyBodyAccelerationJerkMean-X
- frequencyBodyAccelerationJerkMean-Y
- frequencyBodyAccelerationJerkMean-Z
- frequencyBodyAccelerationJerkSD-X
- frequencyBodyAccelerationJerkSD-Y
- frequencyBodyAccelerationJerkSD-Z
- frequencyBodyGyroscopeMean-X
- frequencyBodyGyroscopeMean-Y
- frequencyBodyGyroscopeMean-Z
- frequencyBodyGyroscopeSD-X                
- frequencyBodyGyroscopeSD-Y                
- frequencyBodyGyroscopeSD-Z
- frequencyBodyAccelerationMagnitudeMean
- frequencyBodyAccelerationMagnitudeSD  
- frequencyBodyAccelerationJerkMagnitudeMean
- frequencyBodyAccelerationJerkMagnitudeSD
- frequencyBodyGyroscopeMagnitudeMean
- frequencyBodyGyroscopeMagnitudeSD
- frequencyBodyGyroscopeJerkMagnitudeMean
- frequencyBodyGyroscopeJerkMagnitudeSD
