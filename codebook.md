#CodeBook

This codebook describes the variables and summaries calculated by the script

##Source Dataset

The original data set can be found here [Dataset.zp](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The experiments involved 30 volunteers with an age between 19 and 38 years performing six different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
while wearing a smartphone (Samsung Galaxy S II) on the waist. Signal coming from the device sensors (accelerometer and gyroscope) were pre-processed by applying various signal processing techniques.

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

	-tBodyAcc-XYZ
	-tGravityAcc-XYZ
	-tBodyAccJerk-XYZ
	-tBodyGyro-XYZ
	-tBodyGyroJerk-XYZ
	-tBodyAccMag
	-tGravityAccMag
	-tBodyAccJerkMag
	-tBodyGyroMag
	-tBodyGyroJerkMag
	-fBodyAcc-XYZ
	-fBodyAccJerk-XYZ
	-fBodyGyro-XYZ
	-fBodyAccMag
	-fBodyAccJerkMag
	-fBodyGyroMag
	-fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

	-mean(): Mean value
	-std(): Standard deviation
	-mad(): Median absolute deviation 
	-max(): Largest value in array
	-min(): Smallest value in array
	-sma(): Signal magnitude area
	-energy(): Energy measure. Sum of the squares divided by the number of values. 
	-iqr(): Interquartile range 
	-entropy(): Signal entropy
	-arCoeff(): Autorregresion coefficients with Burg order equal to 4
	-correlation(): correlation coefficient between two signals
	-maxInds(): index of the frequency component with largest magnitude
	-meanFreq(): Weighted average of the frequency components to obtain a mean frequency
	-skewness(): skewness of the frequency domain signal 
	-kurtosis(): kurtosis of the frequency domain signal 
	-bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
	-angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

	-gravityMean
	-tBodyAccMean
	-tBodyAccJerkMean
	-tBodyGyroMean
	-tBodyGyroJerkMean

A datailed description of the original dataset is reported in the file [features_info.txt](https://github.com/thesecretwishofthefish/CleaningData/blob/master/features_info.txt)

A complete list of the data collected features is included in the file [features.txt](https://github.com/thesecretwishofthefish/CleaningData/blob/master/features.txt) 

The following list is the subset of the columns (properly renamed, see section #4 of the run_analysis.R) selected by the script  

	-activityCode : Activity Id (ranging from 1 to 6)
	-activityDesc : Activity Description (with six levels : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
	-subjectCode : Subject/Volunteer Id (ranging from 1 to 30)
	-timeBodyAccMagMean : numeric
	-timeBodyAccMagStdDev : numeric
	-timeGravityAccMagMean : numeric
	-timeGravityAccMagStdDev : numeric
	-timeBodyAccJerkMagMean : numeric
	-timeBodyAccJerkMagStdDev : numeric
	-timeBodyGyroMagMean : numeric
	-timeBodyGyroMagStdDev : numeric
	-timeBodyGyroJerkMagMean : numeric
	-timeBodyGyroJerkMagStdDev : numeric
	-freqBodyAccMagMean : numeric
	-freqBodyAccMagStdDev : numeric
	-freqBodyBodyAccJerkMagMean : numeric
	-freqBodyBodyAccJerkMagStdDev : numeric 
	-freqBodyBodyGyroMagMean : numeric 
	-freqBodyBodyGyroMagStdDev  : numeric
	-freqBodyBodyGyroJerkMagMean  : numeric
	-freqBodyBodyGyroJerkMagStdDev : numeric