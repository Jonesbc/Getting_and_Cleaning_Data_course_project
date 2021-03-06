Getting and Cleaning Data course project: Code Book for "tidy_dataset.txt"
===========================================
I summarized the dataset from Anguita et al. (2012) into "tidy_dataset.txt" according to the "tidy data" principles laid out by Wickham (2014). Each column contains a single variable and each row contains a single observation. "tidy_dataset.txt" contains mean values of all the mean and standard deviations of each measure of each subject for each activity type performed (e.g., walkeing, laying; see below).  
===========================================
Independent variable list in "tidy_dataset.txt":
1. activity (physical activity performed)
    levels
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

2. subject (participating individuals)
    levels
        1:30
============================================
Dependent variables:
    - Means of the mean or standard deviation of the measures taken by Anguita et al. (2012)
    
    "The features selected for this database come from the accelerometer and gyroscope 3-axial 
    raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
    were captured at a constant rate of 50 Hz. Then they were filtered using a median filter
    and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
    Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
    (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency 
    of 0.3 Hz. 

    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk 
    signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals 
    were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
    tBodyGyroJerkMag). 

    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
    fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to 
    indicate frequency domain signals).

    These signals were used to estimate variables of the feature vector for each pattern:  
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions" (Anguita et al. 2012).
    
    mean = mean value
    std = standard deviation
    
    dependent variable list in "tidy_dataset.txt":
        tBodyAcc.mean...X
        tBodyAcc.mean...Y
        tBodyAcc.mean...Z
        tGravityAcc.mean...X
        tGravityAcc.mean...Y
        tGravityAcc.mean...Z
        tBodyAccJerk.mean...X
        tBodyAccJerk.mean...Y
        tBodyAccJerk.mean...Z
        tBodyGyro.mean...X
        tBodyGyro.mean...Y
        tBodyGyro.mean...Z
        tBodyGyroJerk.mean...X
        tBodyGyroJerk.mean...Y
        tBodyGyroJerk.mean...Z
        tBodyAccMag.mean..
        tGravityAccMag.mean..
        tBodyAccJerkMag.mean..
        tBodyGyroMag.mean..
        tBodyGyroJerkMag.mean..
        fBodyAcc.mean...X
        fBodyAcc.mean...Y
        fBodyAcc.mean...Z
        fBodyAcc.meanFreq...X
        fBodyAcc.meanFreq...Y
        fBodyAcc.meanFreq...Z
        fBodyAccJerk.mean...X
        fBodyAccJerk.mean...Y
        fBodyAccJerk.mean...Z
        fBodyAccJerk.meanFreq...X
        fBodyAccJerk.meanFreq...Y
        fBodyAccJerk.meanFreq...Z
        fBodyGyro.mean...X
        fBodyGyro.mean...Y
        fBodyGyro.mean...Z
        fBodyGyro.meanFreq...X
        fBodyGyro.meanFreq...Y
        fBodyGyro.meanFreq...Z
        fBodyAccMag.mean..
        fBodyAccMag.meanFreq..
        fBodyBodyAccJerkMag.mean..
        fBodyBodyAccJerkMag.meanFreq..
        fBodyBodyGyroMag.mean..
        fBodyBodyGyroMag.meanFreq..
        fBodyBodyGyroJerkMag.mean..
        fBodyBodyGyroJerkMag.meanFreq..
        tBodyAcc.std...X
        tBodyAcc.std...Y
        tBodyAcc.std...Z
        tGravityAcc.std...X
        tGravityAcc.std...Y
        tGravityAcc.std...Z
        tBodyAccJerk.std...X
        tBodyAccJerk.std...Y
        tBodyAccJerk.std...Z
        tBodyGyro.std...X
        tBodyGyro.std...Y
        tBodyGyro.std...Z
        tBodyGyroJerk.std...X
        tBodyGyroJerk.std...Y
        tBodyGyroJerk.std...Z
        tBodyAccMag.std..
        tGravityAccMag.std..
        tBodyAccJerkMag.std..
        tBodyGyroMag.std..
        tBodyGyroJerkMag.std..
        fBodyAcc.std...X
        fBodyAcc.std...Y
        fBodyAcc.std...Z
        fBodyAccJerk.std...X
        fBodyAccJerk.std...Y
        fBodyAccJerk.std...Z
        fBodyGyro.std...X
        fBodyGyro.std...Y
        fBodyGyro.std...Z
        fBodyAccMag.std..
        fBodyBodyAccJerkMag.std..
        fBodyBodyGyroMag.std..
        fBodyBodyGyroJerkMag.std..
==================================================================================
References:
1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 2012. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL). Vitoria-Gasteiz, Spain. Dec 2012.
2. Wickham, Hadley. 2014. Tidy data. Journal of Statistcial Software 59:1-23.
