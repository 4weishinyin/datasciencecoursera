 Data Dictionary
 
 [1]  Activity 									  18    
 				
 		Activity Name
 				 LAYING              
 				 SITTING             
 				 STANDING            
 				 WALKING            
			     WALKING_DOWNSTAIRS  
				 WALKING_UPSTAIRS  
				                                            
 [2]  Subject         							   2
 
        Subject Identifier
                1:30      
                                                   
 [3]  TimeBodyAccelerometerMeanX  				   16   

        The computed average of the Time Body Accelerometer Mean X-axial measurement 
        per activity/subject 
                                        
 [4]  TimeBodyAccelerometerMeanY				   16   

        The computed average of the Time Body Accelerometer Mean Y-axial measurement 
        per activity/subject 

 [5]  TimeBodyAccelerometerMeanZ				   16                               

        The computed average of the Time Body Accelerometer Mean Z-axial measurement 
        per activity/subject 

 [6]  TimeGravityAccelerometerMeanX  			   16                          

        The computed average of the Time Gravity Accelerometer Mean X-axial measurement 
        per activity/subject 

 [7]  TimeGravityAccelerometerMeanY                16               

        [7] - [68] are the computed average of the respective measurement.  
        Please refer to '** Note' below for more explanations.

 [8]  TimeGravityAccelerometerMeanZ                16               
 [9]  TimeBodyAccelerometerJerkMeanX               16               
[10]  TimeBodyAccelerometerJerkMeanY               16               
[11]  TimeBodyAccelerometerJerkMeanZ               16               
[12]  TimeBodyGyroscopeMeanX                       16               
[13]  TimeBodyGyroscopeMeanY                       16               
[14]  TimeBodyGyroscopeMeanZ                       16               
[15]  TimeBodyGyroscopeJerkMeanX                   16               
[16]  TimeBodyGyroscopeJerkMeanY                   16               
[17]  TimeBodyGyroscopeJerkMeanZ                   16               
[18]  TimeBodyAccelerometerMagnitudeMean           16               
[19]  TimeGravityAccelerometerMagnitudeMean        16               
[20]  TimeBodyAccelerometerJerkMagnitudeMean       16               
[21]  TimeBodyGyroscopeMagnitudeMean               16               
[22]  TimeBodyGyroscopeJerkMagnitudeMean           16               
[23]  FrequencyBodyAccelerometerMeanX              16               
[24]  FrequencyBodyAccelerometerMeanY              16               
[25]  FrequencyBodyAccelerometerMeanZ              16               
[26]  FrequencyBodyAccelerometerJerkMeanX          16               
[27]  FrequencyBodyAccelerometerJerkMeanY          16               
[28]  FrequencyBodyAccelerometerJerkMeanZ          16               
[29]  FrequencyBodyGyroscopeMeanX                  16               
[30]  FrequencyBodyGyroscopeMeanY                  16               
[31]  FrequencyBodyGyroscopeMeanZ                  16               
[32]  FrequencyBodyAccelerometerMagnitudeMean      16               
[33]  FrequencyBodyAccelerometerJerkMagnitudeMean  16            
[34]  FrequencyBodyGyroscopeMagnitudeMean          16               
[35]  FrequencyBodyGyroscopeJerkMagnitudeMean      16               
[36]  TimeBodyAccelerometerStandardDeviationX      16               
[37]  TimeBodyAccelerometerStandardDeviationY      16               
[38]  TimeBodyAccelerometerStandardDeviationZ      16               
[39]  TimeGravityAccelerometerStandardDeviationX   16             
[40]  TimeGravityAccelerometerStandardDeviationY   16             
[41]  TimeGravityAccelerometerStandardDeviationZ   16            
[42]  TimeBodyAccelerometerJerkStandardDeviationX  16            
[43]  TimeBodyAccelerometerJerkStandardDeviationY  16            
[44]  TimeBodyAccelerometerJerkStandardDeviationZ  16            
[45]  TimeBodyGyroscopeStandardDeviationX          16               
[46]  TimeBodyGyroscopeStandardDeviationY          16               
[47]  TimeBodyGyroscopeStandardDeviationZ          16               
[48]  TimeBodyGyroscopeJerkStandardDeviationX      16               
[49]  TimeBodyGyroscopeJerkStandardDeviationY      16               
[50]  TimeBodyGyroscopeJerkStandardDeviationZ                     16               
[51]  TimeBodyAccelerometerMagnitudeStandardDeviation             16     
[52]  TimeGravityAccelerometerMagnitudeStandardDeviation          16     
[53]  TimeBodyAccelerometerJerkMagnitudeStandardDeviation         16     
[54]  TimeBodyGyroscopeMagnitudeStandardDeviation                 16     
[55]  TimeBodyGyroscopeJerkMagnitudeStandardDeviation             16     
[56]  FrequencyBodyAccelerometerStandardDeviationX                16     
[57]  FrequencyBodyAccelerometerStandardDeviationY                16     
[58]  FrequencyBodyAccelerometerStandardDeviationZ                16     
[59]  FrequencyBodyAccelerometerJerkStandardDeviationX            16     
[60]  FrequencyBodyAccelerometerJerkStandardDeviationY            16     
[61]  FrequencyBodyAccelerometerJerkStandardDeviationZ            16     
[62]  FrequencyBodyGyroscopeStandardDeviationX                    16     
[63]  FrequencyBodyGyroscopeStandardDeviationY                    16     
[64]  FrequencyBodyGyroscopeStandardDeviationZ            		  16     
[65]  FrequencyBodyAccelerometerMagnitudeStandardDeviation        16    
[66]  FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation    16
[67]  FrequencyBodyGyroscopeMagnitudeStandardDeviation            16
[68]  FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation        16

** Note: [3] - [68] stores the computed average of each of the 66 measurements of 
the mean and the standard deviation measurement per activity/subject. The field names 
shown at the data dictionary above, [3] -[68], are renames of the original data set
based on the following mechanism:
   
   For column names that 
         * match "BodyBody" pattern, the matched is substituted with "Body" 
           due to the typo in the data source
         * start with "t", the matched is substituted with "Time"
         * start with "f", the matched is substituted with "Frequency"
         * match "Gyro" pattern, the matched is substituted with "Gyroscope"
         * match "Acc" pattern, the matched is substituted with "Accelerometer"
         * match "Mag" pattern, the matched is substituted with "Magnitude"
         * match "()" or "-" pattern, the matched is removed
         * retain "X", "Y", "Z" character representing the various axial direction

    As an example, the original name of the field name [4] was 'tBodyAccMeanY', it's 
    then transformed to 'TimeBodyAccelerometerMeanY'. 

** Also, the following information was extracted from the link provided by the course 
to assit readers understanding the terminologies used on the measurement data collected 
from the accelerometers from the Samsung Galaxy S smartphone.
 
The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove 
noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to
obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of 
these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

And the set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation


