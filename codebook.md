---
title: "Codebook"
date: "January 31 2016"
output: html_document
---
========

##Variable and descriptions
###Subject
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

Variable name    | Description
-----------------|------------
subject          | ID of the 30 volunteers  who performed the activity. Its range is from 1 to 30.
###Activity
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Variable name    | Description
-----------------|------------
activity         |  Activity_ID and Activity performed are here. 
                 |  It has 6 activities:
                 |   1. WALKING
                 |   2. WALKING_UPSTAIRS
                 |   3. WALKING_DOWNSTAIRS
                 |   4. SITTING
                 |   5. STANDING
                 |   6. LAYING
###Features taken for the project notes
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz are captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals 
timeAccelerometer a-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyacceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeBodyAccelerometer-XYZ
- timeGravityAccelerometer-XYZ
- timeBodyAccelerometerJerk-XYZ
- timeBodyGyroscope-XYZ
- timeBodyGyroscopeJerk-XYZ
- timeBodyAccelerometerMagnitude
- timeGravityAccelerometerMagnitude
- timeBodyAccelerometerJerkMagnitude
- timeBodyGyroscopeMagnitude
- timeBodyGyroscopeJerkMagnitude
- frequencyBodyAccelerometer-XYZ
- frequencyBodyAccelerometerJerk-XYZ
- frequencyBodyGyroscope-XYZ
- frequencyBodyAccelerometerMagnitude
- frequencyBodyAccelerometerJerkMagnitude
- frequencyBodyGyroscopeMagnitude
- frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 
- mean(): Mean value
- std(): Standard deviation


**68  variable names in the dataset:**          
--------------------------------
- timeBodyAccelerometer-mean()-X              
- timeBodyAccelerometer-mean()-Y              
- timeBodyAccelerometer-mean()-Z              
- timeBodyAccelerometer-std()-X               
- timeBodyAccelerometer-std()-Y
- timeBodyAccelerometer-std()-Z
- timeGravityAccelerometer-mean()-X
- timeGravityAccelerometer-mean()-Y
- timeGravityAccelerometer-mean()-Z
- timeGravityAccelerometer-std()-X
- timeGravityAccelerometer-std()-Y
- timeGravityAccelerometer-std()-Z
- timeBodyAccelerometerJerk-mean()-X
- timeBodyAccelerometerJerk-mean()-Y
- timeBodyAccelerometerJerk-mean()-Z
- timeBodyAccelerometerJerk-std()-X
- timeBodyAccelerometerJerk-std()-Y
- timeBodyAccelerometerJerk-std()-Z
- timeBodyGyroscope-mean()-X
- timeBodyGyroscope-mean()-Y
- timeBodyGyroscope-mean()-Z
- timeBodyGyroscope-std()-X
- timeBodyGyroscope-std()-Y
- timeBodyGyroscope-std()-Z
- timeBodyGyroscopeJerk-mean()-X
- timeBodyGyroscopeJerk-mean()-Y
- timeBodyGyroscopeJerk-mean()-Z
- timeBodyGyroscopeJerk-std()-X
- timeBodyGyroscopeJerk-std()-Y
- timeBodyGyroscopeJerk-std()-Z
- timeBodyAccelerometerMagnitude-mean()
- timeBodyAccelerometerMagnitude-std()
- timeGravityAccelerometerMagnitude-mean()
- timeGravityAccelerometerMagnitude-std()
- timeBodyAccelerometerJerkMagnitude-mean()
- timeBodyAccelerometerJerkMagnitude-std()
- timeBodyGyroscopeMagnitude-mean()
- timeBodyGyroscopeMagnitude-std()
- timeBodyGyroscopeJerkMagnitude-mean()
- timeBodyGyroscopeJerkMagnitude-std()
- frequencyBodyAccelerometer-mean()-X
- frequencyBodyAccelerometer-mean()-Y
- frequencyBodyAccelerometer-mean()-Z
- frequencyBodyAccelerometer-std()-X
- frequencyBodyAccelerometer-std()-Y
- frequencyBodyAccelerometer-std()-Z
- frequencyBodyAccelerometerJerk-mean()-X
- frequencyBodyAccelerometerJerk-mean()-Y
- frequencyBodyAccelerometerJerk-mean()-Z
- frequencyBodyAccelerometerJerk-std()-X
- frequencyBodyAccelerometerJerk-std()-Y
- frequencyBodyAccelerometerJerk-std()-Z
- frequencyBodyGyroscope-mean()-X
- frequencyBodyGyroscope-mean()-Y
- frequencyBodyGyroscope-mean()-Z
- frequencyBodyGyroscope-std()-X
- frequencyBodyGyroscope-std()-Y
- frequencyBodyGyroscope-std()-Z
- frequencyBodyAccelerometerMagnitude-mean()
- frequencyBodyAccelerometerMagnitude-std()
- frequencyBodyAccelerometerJerkMagnitude-mean()
- frequencyBodyAccelerometerJerkMagnitude-std()
- frequencyBodyGyroscopeMagnitude-mean()
- frequencyBodyGyroscopeMagnitude-std()
- frequencyBodyGyroscopeJerkMagnitude-mean()
- frequencyBodyGyroscopeJerkMagnitude-std()

`Note`: Features are normalized and bounded within [-1,1]

##Dataset structure
-----------------

```r
str(alldata)
```

```
## 'data.frame':	10299 obs. of  68 variables:
##  $ activity_name            : chr  "WALKING" "WALKING" "WALKING" "WALKING" ...
##  $ subject_id               : int  26 29 29 29 29 29 29 29 29 29 ...
##  $ tbodyacc_mean_x          : num  0.231 0.331 0.376 0.233 0.236 ...
##  $ tbodyacc_mean_y          : num  -0.0177 -0.0185 -0.0247 -0.0345 -0.0144 ...
##  $ tbodyacc_mean_z          : num  -0.122 -0.17 -0.157 -0.105 -0.124 ...
##  $ tbodyacc_std_x           : num  -0.419 -0.145 -0.107 -0.175 -0.21 ...
##  $ tbodyacc_std_y           : num  -0.13923 -0.09825 0.06609 0.00431 -0.07492 ...
##  $ tbodyacc_std_z           : num  -0.3862 -0.0239 -0.1973 -0.3154 -0.247 ...
##  $ tgravityacc_mean_x       : num  0.965 0.962 0.966 0.965 0.962 ...
##  $ tgravityacc_mean_y       : num  -0.128 -0.12 -0.126 -0.124 -0.119 ...
##  $ tgravityacc_mean_z       : num  0.1084 0.1275 0.0901 0.06 0.0665 ...
##  $ tgravityacc_std_x        : num  -0.99 -0.972 -0.98 -0.977 -0.982 ...
##  $ tgravityacc_std_y        : num  -0.966 -0.977 -0.976 -0.969 -0.992 ...
##  $ tgravityacc_std_z        : num  -0.974 -0.779 -0.745 -0.949 -0.959 ...
##  $ tbodyaccjerk_mean_x      : num  0.125 0.592 -0.229 -0.378 0.1 ...
##  $ tbodyaccjerk_mean_y      : num  0.1408 -0.4805 -0.0903 0.3786 0.2861 ...
##  $ tbodyaccjerk_mean_z      : num  -0.07855 -0.39695 -0.12248 -0.00329 0.08219 ...
##  $ tbodyaccjerk_std_x       : num  -0.366 -0.245 -0.161 -0.173 -0.25 ...
##  $ tbodyaccjerk_std_y       : num  -0.2991 -0.072 0.1138 -0.0594 -0.1168 ...
##  $ tbodyaccjerk_std_z       : num  -0.444 -0.446 -0.425 -0.545 -0.38 ...
##  $ tbodygyro_mean_x         : num  -0.01634 0.3863 0.14997 0.04616 0.00533 ...
##  $ tbodygyro_mean_y         : num  -0.0877 -0.3113 -0.1156 -0.1686 -0.1671 ...
##  $ tbodygyro_mean_z         : num  0.0696 -0.0494 0.109 0.1143 0.088 ...
##  $ tbodygyro_std_x          : num  -0.434 -0.482 -0.505 -0.578 -0.57 ...
##  $ tbodygyro_std_y          : num  -0.615 -0.201 -0.129 -0.117 -0.158 ...
##  $ tbodygyro_std_z          : num  -0.378 -0.486 -0.415 -0.481 -0.5 ...
##  $ tbodygyrojerk_mean_x     : num  -0.0311 -0.2558 -0.1685 0.0347 -0.1382 ...
##  $ tbodygyrojerk_mean_y     : num  -0.0929 0.2189 -0.2103 -0.3449 0.2167 ...
##  $ tbodygyrojerk_mean_z     : num  0.1915 0.1463 0.0524 -0.3041 0.0664 ...
##  $ tbodygyrojerk_std_x      : num  -0.416 -0.354 -0.292 -0.339 -0.363 ...
##  $ tbodygyrojerk_std_y      : num  -0.61 -0.624 -0.539 -0.547 -0.601 ...
##  $ tbodygyrojerk_std_z      : num  -0.523 -0.547 -0.457 -0.518 -0.514 ...
##  $ tbodyaccmag_mean         : num  -0.2881 -0.0307 -0.0144 -0.0958 -0.1301 ...
##  $ tbodyaccmag_std          : num  -0.471 -0.207 -0.156 -0.234 -0.235 ...
##  $ tgravityaccmag_mean      : num  -0.2881 -0.0307 -0.0144 -0.0958 -0.1301 ...
##  $ tgravityaccmag_std       : num  -0.471 -0.207 -0.156 -0.234 -0.235 ...
##  $ tbodyaccjerkmag_mean     : num  -0.352 -0.243 -0.15 -0.231 -0.254 ...
##  $ tbodyaccjerkmag_std      : num  -0.2851 -0.1386 -0.0239 -0.1252 -0.1001 ...
##  $ tbodygyromag_mean        : num  -0.385 -0.119 -0.19 -0.236 -0.27 ...
##  $ tbodygyromag_std         : num  -0.527 -0.393 -0.337 -0.374 -0.369 ...
##  $ tbodygyrojerkmag_mean    : num  -0.531 -0.525 -0.444 -0.479 -0.511 ...
##  $ tbodygyrojerkmag_std     : num  -0.626 -0.617 -0.554 -0.555 -0.605 ...
##  $ fbodyacc_mean_x          : num  -0.4329 -0.0664 -0.049 -0.0588 -0.1886 ...
##  $ fbodyacc_mean_y          : num  -0.1631 -0.0809 0.1273 0.0331 -0.0201 ...
##  $ fbodyacc_mean_z          : num  -0.41 -0.12 -0.225 -0.357 -0.244 ...
##  $ fbodyacc_std_x           : num  -0.414 -0.178 -0.13 -0.225 -0.218 ...
##  $ fbodyacc_std_y           : num  -0.1808 -0.1647 -0.0362 -0.0752 -0.1645 ...
##  $ fbodyacc_std_z           : num  -0.422 -0.048 -0.246 -0.346 -0.31 ...
##  $ fbodyaccjerk_mean_x      : num  -0.449 -0.232 -0.132 -0.127 -0.231 ...
##  $ fbodyaccjerk_mean_y      : num  -0.33194 -0.00336 0.05972 -0.02074 -0.10515 ...
##  $ fbodyaccjerk_mean_z      : num  -0.5 -0.363 -0.359 -0.474 -0.294 ...
##  $ fbodyaccjerk_std_x       : num  -0.339 -0.329 -0.275 -0.308 -0.343 ...
##  $ fbodyaccjerk_std_y       : num  -0.3098 -0.2372 0.0988 -0.1804 -0.1966 ...
##  $ fbodyaccjerk_std_z       : num  -0.397 -0.531 -0.49 -0.62 -0.466 ...
##  $ fbodygyro_mean_x         : num  -0.336 -0.292 -0.342 -0.416 -0.42 ...
##  $ fbodygyro_mean_y         : num  -0.598 -0.375 -0.306 -0.239 -0.341 ...
##  $ fbodygyro_mean_z         : num  -0.294 -0.434 -0.357 -0.4 -0.434 ...
##  $ fbodygyro_std_x          : num  -0.466 -0.543 -0.557 -0.63 -0.619 ...
##  $ fbodygyro_std_y          : num  -0.6292 -0.1158 -0.042 -0.0561 -0.0687 ...
##  $ fbodygyro_std_z          : num  -0.465 -0.551 -0.489 -0.558 -0.569 ...
##  $ fbodyaccmag_mean         : num  -0.439 -0.196 -0.133 -0.213 -0.24 ...
##  $ fbodyaccmag_std          : num  -0.572 -0.337 -0.301 -0.365 -0.351 ...
##  $ fbodybodyaccjerkmag_mean : num  -0.3528 -0.0788 -0.0322 -0.1166 -0.0572 ...
##  $ fbodybodyaccjerkmag_std  : num  -0.2091 -0.2221 -0.0186 -0.1418 -0.1578 ...
##  $ fbodybodygyromag_mean    : num  -0.553 -0.427 -0.359 -0.413 -0.416 ...
##  $ fbodybodygyromag_std     : num  -0.59 -0.473 -0.436 -0.454 -0.445 ...
##  $ fbodybodygyrojerkmag_mean: num  -0.651 -0.622 -0.586 -0.57 -0.655 ...
##  $ fbodybodygyrojerkmag_std : num  -0.619 -0.638 -0.543 -0.565 -0.573 ...
```

##Dataset summary
-----------------

```r
summary(alldata)
```

```
##  activity_name        subject_id    tbodyacc_mean_x   tbodyacc_mean_y   
##  Length:10299       Min.   : 1.00   Min.   :-1.0000   Min.   :-1.00000  
##  Class :character   1st Qu.: 9.00   1st Qu.: 0.2626   1st Qu.:-0.02490  
##  Mode  :character   Median :17.00   Median : 0.2772   Median :-0.01716  
##                     Mean   :16.15   Mean   : 0.2743   Mean   :-0.01774  
##                     3rd Qu.:24.00   3rd Qu.: 0.2884   3rd Qu.:-0.01062  
##                     Max.   :30.00   Max.   : 1.0000   Max.   : 1.00000  
##  tbodyacc_mean_z    tbodyacc_std_x    tbodyacc_std_y     tbodyacc_std_z   
##  Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000  
##  1st Qu.:-0.12102   1st Qu.:-0.9924   1st Qu.:-0.97699   1st Qu.:-0.9791  
##  Median :-0.10860   Median :-0.9430   Median :-0.83503   Median :-0.8508  
##  Mean   :-0.10892   Mean   :-0.6078   Mean   :-0.51019   Mean   :-0.6131  
##  3rd Qu.:-0.09759   3rd Qu.:-0.2503   3rd Qu.:-0.05734   3rd Qu.:-0.2787  
##  Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000  
##  tgravityacc_mean_x tgravityacc_mean_y  tgravityacc_mean_z
##  Min.   :-1.0000    Min.   :-1.000000   Min.   :-1.00000  
##  1st Qu.: 0.8117    1st Qu.:-0.242943   1st Qu.:-0.11671  
##  Median : 0.9218    Median :-0.143551   Median : 0.03680  
##  Mean   : 0.6692    Mean   : 0.004039   Mean   : 0.09215  
##  3rd Qu.: 0.9547    3rd Qu.: 0.118905   3rd Qu.: 0.21621  
##  Max.   : 1.0000    Max.   : 1.000000   Max.   : 1.00000  
##  tgravityacc_std_x tgravityacc_std_y tgravityacc_std_z tbodyaccjerk_mean_x
##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000   
##  1st Qu.:-0.9949   1st Qu.:-0.9913   1st Qu.:-0.9866   1st Qu.: 0.06298   
##  Median :-0.9819   Median :-0.9759   Median :-0.9665   Median : 0.07597   
##  Mean   :-0.9652   Mean   :-0.9544   Mean   :-0.9389   Mean   : 0.07894   
##  3rd Qu.:-0.9615   3rd Qu.:-0.9464   3rd Qu.:-0.9296   3rd Qu.: 0.09131   
##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000   
##  tbodyaccjerk_mean_y tbodyaccjerk_mean_z tbodyaccjerk_std_x
##  Min.   :-1.000000   Min.   :-1.000000   Min.   :-1.0000   
##  1st Qu.:-0.018555   1st Qu.:-0.031552   1st Qu.:-0.9913   
##  Median : 0.010753   Median :-0.001159   Median :-0.9513   
##  Mean   : 0.007948   Mean   :-0.004675   Mean   :-0.6398   
##  3rd Qu.: 0.033538   3rd Qu.: 0.024578   3rd Qu.:-0.2912   
##  Max.   : 1.000000   Max.   : 1.000000   Max.   : 1.0000   
##  tbodyaccjerk_std_y tbodyaccjerk_std_z tbodygyro_mean_x  
##  Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.00000  
##  1st Qu.:-0.9850    1st Qu.:-0.9892    1st Qu.:-0.04579  
##  Median :-0.9250    Median :-0.9543    Median :-0.02776  
##  Mean   :-0.6080    Mean   :-0.7628    Mean   :-0.03098  
##  3rd Qu.:-0.2218    3rd Qu.:-0.5485    3rd Qu.:-0.01058  
##  Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.00000  
##  tbodygyro_mean_y   tbodygyro_mean_z   tbodygyro_std_x   tbodygyro_std_y  
##  Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.10399   1st Qu.: 0.06485   1st Qu.:-0.9872   1st Qu.:-0.9819  
##  Median :-0.07477   Median : 0.08626   Median :-0.9016   Median :-0.9106  
##  Mean   :-0.07472   Mean   : 0.08836   Mean   :-0.7212   Mean   :-0.6827  
##  3rd Qu.:-0.05110   3rd Qu.: 0.11044   3rd Qu.:-0.4822   3rd Qu.:-0.4461  
##  Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000  
##  tbodygyro_std_z   tbodygyrojerk_mean_x tbodygyrojerk_mean_y
##  Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.00000    
##  1st Qu.:-0.9850   1st Qu.:-0.11723     1st Qu.:-0.05868    
##  Median :-0.8819   Median :-0.09824     Median :-0.04056    
##  Mean   :-0.6537   Mean   :-0.09671     Mean   :-0.04232    
##  3rd Qu.:-0.3379   3rd Qu.:-0.07930     3rd Qu.:-0.02521    
##  Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.00000    
##  tbodygyrojerk_mean_z tbodygyrojerk_std_x tbodygyrojerk_std_y
##  Min.   :-1.00000     Min.   :-1.0000     Min.   :-1.0000    
##  1st Qu.:-0.07936     1st Qu.:-0.9907     1st Qu.:-0.9922    
##  Median :-0.05455     Median :-0.9348     Median :-0.9548    
##  Mean   :-0.05483     Mean   :-0.7313     Mean   :-0.7861    
##  3rd Qu.:-0.03168     3rd Qu.:-0.4865     3rd Qu.:-0.6268    
##  Max.   : 1.00000     Max.   : 1.0000     Max.   : 1.0000    
##  tbodygyrojerk_std_z tbodyaccmag_mean  tbodyaccmag_std  
##  Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9926     1st Qu.:-0.9819   1st Qu.:-0.9822  
##  Median :-0.9503     Median :-0.8746   Median :-0.8437  
##  Mean   :-0.7399     Mean   :-0.5482   Mean   :-0.5912  
##  3rd Qu.:-0.5097     3rd Qu.:-0.1201   3rd Qu.:-0.2423  
##  Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
##  tgravityaccmag_mean tgravityaccmag_std tbodyaccjerkmag_mean
##  Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000     
##  1st Qu.:-0.9819     1st Qu.:-0.9822    1st Qu.:-0.9896     
##  Median :-0.8746     Median :-0.8437    Median :-0.9481     
##  Mean   :-0.5482     Mean   :-0.5912    Mean   :-0.6494     
##  3rd Qu.:-0.1201     3rd Qu.:-0.2423    3rd Qu.:-0.2956     
##  Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000     
##  tbodyaccjerkmag_std tbodygyromag_mean tbodygyromag_std 
##  Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9907     1st Qu.:-0.9781   1st Qu.:-0.9775  
##  Median :-0.9288     Median :-0.8223   Median :-0.8259  
##  Mean   :-0.6278     Mean   :-0.6052   Mean   :-0.6625  
##  3rd Qu.:-0.2733     3rd Qu.:-0.2454   3rd Qu.:-0.3940  
##  Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
##  tbodygyrojerkmag_mean tbodygyrojerkmag_std fbodyacc_mean_x  
##  Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000  
##  1st Qu.:-0.9923       1st Qu.:-0.9922      1st Qu.:-0.9913  
##  Median :-0.9559       Median :-0.9403      Median :-0.9456  
##  Mean   :-0.7621       Mean   :-0.7780      Mean   :-0.6228  
##  3rd Qu.:-0.5499       3rd Qu.:-0.6093      3rd Qu.:-0.2646  
##  Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000  
##  fbodyacc_mean_y   fbodyacc_mean_z   fbodyacc_std_x    fbodyacc_std_y    
##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000  
##  1st Qu.:-0.9792   1st Qu.:-0.9832   1st Qu.:-0.9929   1st Qu.:-0.97689  
##  Median :-0.8643   Median :-0.8954   Median :-0.9416   Median :-0.83261  
##  Mean   :-0.5375   Mean   :-0.6650   Mean   :-0.6034   Mean   :-0.52842  
##  3rd Qu.:-0.1032   3rd Qu.:-0.3662   3rd Qu.:-0.2493   3rd Qu.:-0.09216  
##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000  
##  fbodyacc_std_z    fbodyaccjerk_mean_x fbodyaccjerk_mean_y
##  Min.   :-1.0000   Min.   :-1.0000     Min.   :-1.0000    
##  1st Qu.:-0.9780   1st Qu.:-0.9912     1st Qu.:-0.9848    
##  Median :-0.8398   Median :-0.9516     Median :-0.9257    
##  Mean   :-0.6179   Mean   :-0.6567     Mean   :-0.6290    
##  3rd Qu.:-0.3023   3rd Qu.:-0.3270     3rd Qu.:-0.2638    
##  Max.   : 1.0000   Max.   : 1.0000     Max.   : 1.0000    
##  fbodyaccjerk_mean_z fbodyaccjerk_std_x fbodyaccjerk_std_y
##  Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000   
##  1st Qu.:-0.9873     1st Qu.:-0.9920    1st Qu.:-0.9865   
##  Median :-0.9475     Median :-0.9562    Median :-0.9280   
##  Mean   :-0.7436     Mean   :-0.6550    Mean   :-0.6122   
##  3rd Qu.:-0.5133     3rd Qu.:-0.3203    3rd Qu.:-0.2361   
##  Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000   
##  fbodyaccjerk_std_z fbodygyro_mean_x  fbodygyro_mean_y  fbodygyro_mean_z 
##  Min.   :-1.0000    Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9895    1st Qu.:-0.9853   1st Qu.:-0.9847   1st Qu.:-0.9851  
##  Median :-0.9590    Median :-0.8917   Median :-0.9197   Median :-0.8877  
##  Mean   :-0.7809    Mean   :-0.6721   Mean   :-0.7062   Mean   :-0.6442  
##  3rd Qu.:-0.5903    3rd Qu.:-0.3837   3rd Qu.:-0.4735   3rd Qu.:-0.3225  
##  Max.   : 1.0000    Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
##  fbodygyro_std_x   fbodygyro_std_y   fbodygyro_std_z   fbodyaccmag_mean 
##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
##  1st Qu.:-0.9881   1st Qu.:-0.9808   1st Qu.:-0.9862   1st Qu.:-0.9847  
##  Median :-0.9053   Median :-0.9061   Median :-0.8915   Median :-0.8755  
##  Mean   :-0.7386   Mean   :-0.6742   Mean   :-0.6904   Mean   :-0.5860  
##  3rd Qu.:-0.5225   3rd Qu.:-0.4385   3rd Qu.:-0.4168   3rd Qu.:-0.2173  
##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
##  fbodyaccmag_std   fbodybodyaccjerkmag_mean fbodybodyaccjerkmag_std
##  Min.   :-1.0000   Min.   :-1.0000          Min.   :-1.0000        
##  1st Qu.:-0.9829   1st Qu.:-0.9898          1st Qu.:-0.9907        
##  Median :-0.8547   Median :-0.9290          Median :-0.9255        
##  Mean   :-0.6595   Mean   :-0.6208          Mean   :-0.6401        
##  3rd Qu.:-0.3823   3rd Qu.:-0.2600          3rd Qu.:-0.3082        
##  Max.   : 1.0000   Max.   : 1.0000          Max.   : 1.0000        
##  fbodybodygyromag_mean fbodybodygyromag_std fbodybodygyrojerkmag_mean
##  Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000          
##  1st Qu.:-0.9825       1st Qu.:-0.9781      1st Qu.:-0.9921          
##  Median :-0.8756       Median :-0.8275      Median :-0.9453          
##  Mean   :-0.6974       Mean   :-0.7000      Mean   :-0.7798          
##  3rd Qu.:-0.4514       3rd Qu.:-0.4713      3rd Qu.:-0.6122          
##  Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000          
##  fbodybodygyrojerkmag_std
##  Min.   :-1.0000         
##  1st Qu.:-0.9926         
##  Median :-0.9382         
##  Mean   :-0.7922         
##  3rd Qu.:-0.6437         
##  Max.   : 1.0000
```

