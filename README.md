#Course project for the Getting and Cleaning Data Coursera course.

##Assignment Requirements

*The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

[Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

You should create one R script called run_analysis.R that does the following. 

    -Merges the training and the test sets to create one data set.
    -Extracts only the measurements on the mean and standard deviation for each measurement. 
    -Uses descriptive activity names to name the activities in the data set
    -Appropriately labels the data set with descriptive variable names. 
    -Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
*

The required script is included in the file run_analysis.R.

Lines from 15 to 35 are optionals and the parameters workingDir and scriptSubDir should be customized based on your needs.

They are related to the download of the dataset and the initialization of the R working environment, 
you could start the execution of the script from line 36 if you have previously downloaded and extracted the dataset.zip in your own working directory.

The original dataset includes accelerometer and gyroscope data collected from different subjects during six different possible activities
(more details in the README.txt file included in the source zip).

The script calculates a subset of mean grouped by subject and activity.
As result of its execution the script produces the file tidy.txt

More details about the script can be found in the file CodeBook.MD