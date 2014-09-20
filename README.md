# The data link below provided by the course website represents data collected from the accelerometers 
# from the Samsung Galaxy S smartphone 
  

      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
 ## The purpose of this project is to collect, work with, and clean the data set for later analysis. 
=========================================================================================================
     
 You may run the "run_analysis.R" script that does the following:
  
 - Download the zipped data file into "UCI HAR Dataset" folder under your current working directory.
 
 - Unzip the file, the unzipped has Inertial Signals related files which will not be used for this analysis.
 
 - Read into R the files as follows:
 
     1. features.txt        - 561 rows, each contains the feature identifier (rage: 1-561) and the name of the identifier.
_Note that_ features may be the raw signals measured, the derivations or the transformations of some of the signals measured. 
                                
 	 2. activity_labels.txt - 6 rows, each contains the activity identifier (range: 1-6) and the activity label.
 	 
     3. X_test.txt          - 2947 rows, each contains the 561 features being recorded for the test set.
     
     4. subject_test.txt    - 2947 rows, each contains a subject identifier (range: 1-30) who carried out the experiments for the test set.
                                         
     5. y_test.txt          - 2947 rows, each contains an activity identifier (range: 1-6) being performed for the test set. 
                                         
     6. X_train.txt         - 7352 rows, each contains the 561 features being recorded for the training set.
     
     7. subject_train.txt   - 7352 rows, each contains a subject identifier (range: 1-30) who carried out the experiments for the training set.
                                         
     8. y_train.txt         - 7352 rows, each contains an activity identifier (range: 1-6) being performed for the training set. 

     
 - Use descriptive activity names from the activity labels to name the activities performed for the data sets; by joining 
   the y'test' or y'train' and activity_labels. (project step 3) 
   
 - Combine into the datasets (X test/train), the subject identifiers (subject test/train) and the descriptive activity names (y_xxx). 
  
 - Merge the training set (X train) and the test set (X test) to create one consolidated dataset. (project step 1) 

 - Extract only the measurements on the mean and standard deviation for each measurement. Note that the features 
   contain "angle" or "meanFreq" are excluded from this analysis. (project step 2)

 - Appropriately label the data set with descriptive variable names.  using the following methodology. (project step 4)
    
   The complete list of descriptive variable names is available in 'CodeBook.txt'  
   
   For column names that 
         * match "BodyBody" pattern, the matched is substituted with "Body" (due to having typo in the data source)
         * start with "t", the matched is substituted with "Time"
         * start with "f", the matched is substituted with "Frequency"
         * match "Gyro" pattern, the matched is substituted with "Gyroscope"
         * match "Acc" pattern, the matched is substituted with "Accelerometer"
         * match "Mag" pattern, the matched is substituted with "Magnitude"
         * match "()" or "-" pattern, the matched is removed
         * retain "X", "Y", "Z" character representing the various axial direction
         
   For example; an original name of 'tBodyAccMeanY' will be transformed to 'TimeBodyAccelerometerMeanY'.         
               
 - From the merged data set, creates a second, independent tidy dataset. 
   <<<<< This is project step 5 >>>>>   
   
 After the script is run, a file named "Final Data.txt" is created under the current working directory. The file has 180 rows, 
 the 6 activities each carried out by the 30 subjects, each row contains an activity name, a subject identifier,
 and 66 average measurements of the mean and the standard deviation for each measurement. 

 
 
 This project includes the following files:
 =========================================

 - 'README.md'
 
 - 'run_analysis.R' 
 
 - 'CodeBook.md'
 

