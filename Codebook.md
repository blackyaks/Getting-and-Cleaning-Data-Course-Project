# CODEBOOK – GETTING AND CLEANING DATA COURSE PROJECT

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
* mean: Mean value
* std: Standard deviation

## Variables:

subject (Integer)
	Each row identifies the subject who performed the activity for each window sample.
	1...30

activityName (Factor)
	Each row identifies the activity that was performed by the subject.
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING

tBodyAccmeanX (Numeric)
	Time domain signal. X axis body acceleration mean.
	-1...1

tBodyAccmeanY (Numeric)
	Time domain signal. Y axis body acceleration mean.
	-1...1

tBodyAccmeanZ (Numeric)
	Time domain signal. Z axis body acceleration mean.
	-1...1
        
tBodyAccstdX (Numeric)
	Time domain signal. X axis body acceleration standard deviation.
	-1...1
          
tBodyAccstdY (Numeric)
	Time domain signal. Y axis body acceleration standard deviation.
	-1...1


tBodyAccstdZ (Numeric)
	Time domain signal. Z axis body acceleration standard deviation.
	-1...1
               
tGravityAccmeanX (Numeric)
	Time domain signal. X axis gravity acceleration mean.
	-1...1
            
tGravityAccmeanY (Numeric)
	Time domain signal. Y axis gravity acceleration mean.
	-1...1
             
tGravityAccmeanZ (Numeric)
	Time domain signal. Z axis gravity acceleration mean.
	-1...1

tGravityAccstdX (Numeric)
	Time domain signal. X axis gravity acceleration standard deviation.
	-1...1
             
tGravityAccstdY (Numeric)
	Time domain signal. Y axis gravity acceleration standard deviation.
	-1...1
              
tGravityAccstdZ (Numeric)
	Time domain signal. Z axis gravity acceleration standard deviation.
	-1...1
  
tBodyAccJerkmeanX (Numeric)
	Time domain signal. X axis body jerk linear acceleration mean.
	-1...1

tBodyAccJerkmeanY (Numeric)
	Time domain signal. Y axis body jerk linear acceleration mean.
	-1...1
           
tBodyAccJerkmeanZ (Numeric)
	Time domain signal. Z axis body jerk linear acceleration mean.
	-1...1
       
tBodyAccJerkstdX (Numeric)
	Time domain signal. X axis body jerk linear acceleration standard deviation.
	-1...1
  
tBodyAccJerkstdY (Numeric)
	Time domain signal. Y axis body jerk linear acceleration standard deviation.
	-1...1
             
tBodyAccJerkstdZ (Numeric)
	Time domain signal. Z axis body jerk linear acceleration standard deviation.
	-1...1
 
tBodyGyromeanX (Numeric)
	Time domain signal. X axis body angular velocity mean.
	-1...1

tBodyGyromeanY (Numeric)
	Time domain signal. Y axis body angular velocity mean.
	-1...1
           
tBodyGyromeanZ (Numeric)
	Time domain signal. Z axis body angular velocity mean.
	-1...1

tBodyGyrostdX (Numeric) 
	Time domain signal. X axis body angular velocity standard deviation.
	-1...1

tBodyGyrostdY (Numeric)
	Time domain signal. Y axis body angular velocity standard deviation.
	-1...1
                
tBodyGyrostdZ (Numeric)
	Time domain signal. Z axis body angular velocity standard deviation.
	-1...1
        
tBodyGyroJerkmeanX (Numeric)
	Time domain signal. X axis body jerk angular velocity mean.
	-1...1

tBodyGyroJerkmeanY (Numeric)
	Time domain signal. Y axis body jerk angular velocity mean.
	-1...1
         
tBodyGyroJerkmeanZ (Numeric)
	Time domain signal. Z axis body jerk angular velocity mean.
	-1...1
        
tBodyGyroJerkstdX (Numeric)
	Time domain signal. X axis body jerk angular velocity standard deviation.
	-1...1

tBodyGyroJerkstdY (Numeric)  
	Time domain signal. Y axis body jerk angular velocity standard deviation.
	-1...1

tBodyGyroJerkstdZ (Numeric)
	Time domain signal. Z axis body jerk angular velocity standard deviation.
	-1...1
           
tBodyAccMagmean (Numeric)
	Time domain signal. Body acceleration magnitude mean.
	-1...1

tBodyAccMagstd (Numeric)
	Time domain signal. Body acceleration magnitude standard deviation.
	-1...1
               
tGravityAccMagmean (Numeric)
	Time domain signal. Gravity acceleration magnitude mean.
	-1...1

tGravityAccMagstd (Numeric)
	Time domain signal. Gravity acceleration magnitude standard deviation.
	-1...1

tBodyAccJerkMagmean (Numeric)
	Time domain signal. Body jerk linear acceleration magnitude mean.
	-1...1

tBodyAccJerkMagstd (Numeric)
	Time domain signal. Body jerk linear acceleration magnitude standard deviation.
	-1...1

tBodyGyroMagmean (Numeric)            
	Time domain signal. Body angular velocity magnitude mean.
	-1...1

tBodyGyroMagstd (Numeric)
	Time domain signal. Body angular velocity magnitude standard deviation.
	-1...1

tBodyGyroJerkMagmean (Numeric)
	Time domain signal. Body jerk angular velocity magnitude mean.
	-1...1

tBodyGyroJerkMagstd (Numeric)
	Time domain signal. Body jerk angular velocity magnitude standard deviation.
	-1...1

fBodyAccmeanX (Numeric)
	Frequency domain signal. X axis body acceleration mean.
	-1...1
                
fBodyAccmeanY (Numeric)     
	Frequency domain signal. Y axis body acceleration mean.
	-1...1

fBodyAccmeanZ (Numeric)   
	Frequency domain signal. Z axis body acceleration mean.
	-1...1

fBodyAccstdX (Numeric)
	Frequency domain signal. X axis body acceleration standard deviation.
	-1...1

fBodyAccstdY (Numeric)
	Frequency domain signal. Y axis body acceleration standard deviation.
	-1...1

fBodyAccstdZ (Numeric)
	Frequency domain signal. Z axis body acceleration standard deviation.
	-1...1

fBodyAccmeanFreqX (Numeric)
	Frequency domain signal. X axis body acceleration frequency mean.
	-1...1

fBodyAccmeanFreqY (Numeric)  
	Frequency domain signal. Y axis body acceleration frequency mean.
	-1...1

fBodyAccmeanFreqZ (Numeric)
	Frequency domain signal. Z axis body acceleration frequency mean.
	-1...1

fBodyAccJerkmeanX (Numeric)
Frequency domain signal. X axis body jerk linear acceleration mean.
	-1...1

fBodyAccJerkmeanY (Numeric)      
	Frequency domain signal. Y axis body jerk linear acceleration mean.
	-1...1
fBodyAccJerkmeanZ (Numeric)
Frequency domain signal. Z axis body jerk linear acceleration mean.
	-1...1

fBodyAccJerkstdX (Numeric)
Frequency domain signal. X axis body jerk linear acceleration standard deviation.
	-1...1

fBodyAccJerkstdY (Numeric)
Frequency domain signal. Y axis body jerk linear acceleration standard deviation.
	-1...1
            
fBodyAccJerkstdZ (Numeric)   
Frequency domain signal. Z axis body jerk linear acceleration standard deviation.
	-1...1

fBodyAccJerkmeanFreqX (Numeric)   
Frequency domain signal. X axis body jerk linear acceleration frequency mean.
	-1...1

fBodyAccJerkmeanFreqY (Numeric)
Frequency domain signal. Y axis body jerk linear acceleration frequency mean.
	-1...1
        
fBodyAccJerkmeanFreqZ (Numeric)
Frequency domain signal. Z axis body jerk linear acceleration frequency mean.
	-1...1
       
fBodyGyromeanX (Numeric)
Frequency domain signal. X axis body angular velocity mean.
	-1...1
               
fBodyGyromeanY (Numeric)       
Frequency domain signal. Y axis body angular velocity mean.
	-1...1

fBodyGyromeanZ (Numeric)
Frequency domain signal. Z axis body angular velocity mean.
	-1...1

fBodyGyrostdX (Numeric)
Frequency domain signal. X axis body angular velocity standard deviation.
	-1...1

fBodyGyrostdY (Numeric)     
Frequency domain signal. Y axis body angular velocity standard deviation.
	-1...1

fBodyGyrostdZ (Numeric)      
Frequency domain signal. Z axis body angular velocity standard deviation.
	-1...1

fBodyGyromeanFreqX (Numeric)      
Frequency domain signal. X axis body angular velocity frequency mean.
	-1...1

fBodyGyromeanFreqY (Numeric)
Frequency domain signal. Y axis body angular velocity frequency mean.
	-1...1

fBodyGyromeanFreqZ (Numeric)
Frequency domain signal. Z axis body angular velocity frequency mean.
	-1...1

fBodyAccMagmean (Numeric)
Frequency domain signal. Body acceleration magnitude mean.
	-1...1

fBodyAccMagstd (Numeric)
Frequency domain signal. Body acceleration magnitude standard deviation.
	-1...1
               
fBodyAccMagmeanFreq (Numeric)    
Frequency domain signal. Body acceleration magnitude frequency mean.
	-1...1

fBodyBodyAccJerkMagmean (Numeric)
Frequency domain signal. Body jerk linear acceleration magnitude mean.
	-1...1

fBodyBodyAccJerkMagstd (Numeric)
Frequency domain signal. Body jerk linear acceleration magnitude standard deviation.
	-1...1

fBodyBodyAccJerkMagmeanFreq (Numeric)
Frequency domain signal. Body jerk linear acceleration magnitude frequency mean.
	-1...1

fBodyBodyGyroMagmean (Numeric)
Frequency domain signal. Body angular velocity magnitude mean.
	-1...1

fBodyBodyGyroMagstd (Numeric)
Frequency domain signal. Body angular velocity magnitude standard deviation.
	-1...1

fBodyBodyGyroMagmeanFreq (Numeric)
Frequency domain signal. Body angular velocity magnitude frequency mean.
	-1...1

fBodyBodyGyroJerkMagmean (Numeric)
Frequency domain signal. Body jerk angular velocity magnitude mean.
	-1...1

fBodyBodyGyroJerkMagstd (Numeric)
Frequency domain signal. Body jerk angular velocity magnitude standard deviation.
	-1...1

fBodyBodyGyroJerkMagmeanFreq (Numeric)
Frequency domain signal. Body jerk angular velocity magnitude frequency mean.
	-1...1

