
#CodeBook.md

##Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

> tBodyAcc-XYZ, 
> tGravityAcc-XYZ, 
> tBodyAccJerk-XYZ, 
> tBodyGyro-XYZ, 
> tBodyGyroJerk-XYZ, 
> tBodyAccMag, 
> tGravityAccMag, 
> tBodyAccJerkMag, 
> tBodyGyroMag, 
> tBodyGyroJerkMag, 
> fBodyAcc-XYZ, 
> fBodyAccJerk-XYZ, 
> fBodyGyro-XYZ, 
> fBodyAccMag, 
> fBodyAccJerkMag, 
> fBodyGyroMag, 
> fBodyGyroJerkMag, 

The set of variables that were estimated from these signals are: 

> mean(): Mean value

> std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

> gravityMean, 
> tBodyAccMean, 
> tBodyAccJerkMean, 
> tBodyGyroMean, 
> tBodyGyroJerkMean, 


##Variable Section 

No.	|   Variable Name	      | Explanation
----|------------------------|-------------
1	|	SubjectID	|	ID of Subject. Totally 30 IDs.
2	|	Activity	|	6 Activity Names (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
3	|	Flag	|	train or test.
4	|	tBodyAcc-mean()-X	|	body acceleration mean time for X axis.
5	|	tBodyAcc-mean()-Y	|	body acceleration mean time for Y axis.
6	|	tBodyAcc-mean()-Z	|	body acceleration mean time for Z axis.
7	|	tBodyAcc-std()-X	|	body acceleration standard deviation time for X axis.
8	|	tBodyAcc-std()-Y	|	body acceleration standard deviation time for Y axis.
9	|	tBodyAcc-std()-Z	|	body acceleration standard deviation time for Z axis.
10	|	tGravityAcc-mean()-X	|	gravity acceleration mean time for X axis.
11	|	tGravityAcc-mean()-Y	|	gravity acceleration mean time for Y axis.
12	|	tGravityAcc-mean()-Z	|	gravity acceleration mean time for Z axis.
13	|	tGravityAcc-std()-X	|	gravity acceleration standard deviation time for X axis.
14	|	tGravityAcc-std()-Y	|	gravity acceleration standard deviation time for Y axis.
15	|	tGravityAcc-std()-Z	|	gravity acceleration standard deviation time for Z axis.
16	|	tBodyAccJerk-mean()-X	|	Jerk body acceleration mean time for X axis.
17	|	tBodyAccJerk-mean()-Y	|	Jerk body acceleration mean time for Y axis.
18	|	tBodyAccJerk-mean()-Z	|	Jerk body acceleration mean time for Z axis.
19	|	tBodyAccJerk-std()-X	|	Jerk body acceleration standard deviation time for X axis.
20	|	tBodyAccJerk-std()-Y	|	Jerk body acceleration standard deviation time for Y axis.
21	|	tBodyAccJerk-std()-Z	|	Jerk body acceleration standard deviation time for Z axis.
22	|	tBodyGyro-mean()-X	|	body gyroscope mean time for X axis.
23	|	tBodyGyro-mean()-Y	|	body gyroscope mean time for Y axis.
24	|	tBodyGyro-mean()-Z	|	body gyroscope mean time for Z axis.
25	|	tBodyGyro-std()-X	|	body gyroscope standard deviation time for X axis.
26	|	tBodyGyro-std()-Y	|	body gyroscope standard deviation time for Y axis.
27	|	tBodyGyro-std()-Z	|	body gyroscope standard deviation time for Z axis.
28	|	tBodyGyroJerk-mean()-X	|	Jerk body gyroscope mean time for X axis.
29	|	tBodyGyroJerk-mean()-Y	|	Jerk body gyroscope mean time for Y axis.
30	|	tBodyGyroJerk-mean()-Z	|	Jerk body gyroscope mean time for Z axis.
31	|	tBodyGyroJerk-std()-X	|	Jerk body gyroscope standard deviation time for X axis.
32	|	tBodyGyroJerk-std()-Y	|	Jerk body gyroscope standard deviation time for Y axis.
33	|	tBodyGyroJerk-std()-Z	|	Jerk body gyroscope standard deviation time for Z axis.
34	|	tBodyAccMag-mean()	|	body acceleration magnititude mean time for 3 axis.
35	|	tBodyAccMag-std()	|	body acceleration magnititude standard deviation time for 3 axis.
36	|	tGravityAccMag-mean()	|	gravity acceleration magnititude mean time for 3 axis.
37	|	tGravityAccMag-std()	|	gravity acceleration magnititude standard deviation time for 3 axis.
38	|	tBodyAccJerkMag-mean()	|	Jerk body acceleration magnititude mean time for 3 axis.
39	|	tBodyAccJerkMag-std()	|	Jerk body acceleration magnititude standard deviation time for 3 axis.
40	|	tBodyGyroMag-mean()	|	body gyroscope magnititude mean time for 3 axis.
41	|	tBodyGyroMag-std()	|	body gyroscope magnititude standard deviation time for 3 axis.
42	|	tBodyGyroJerkMag-mean()	|	Jerk body gyroscope magnititude mean time for 3 axis.
43	|	tBodyGyroJerkMag-std()	|	Jerk body gyroscope magnititude standard deviation time for 3 axis.
44	|	fBodyAcc-mean()-X	|	body acceleration mean frequency for X axis.
45	|	fBodyAcc-mean()-Y	|	body acceleration mean frequency for Y axis.
46	|	fBodyAcc-mean()-Z	|	body acceleration mean frequency for Z axis.
47	|	fBodyAcc-std()-X	|	body acceleration standard deviation frequency for X axis.
48	|	fBodyAcc-std()-Y	|	body acceleration standard deviation frequency for Y axis.
49	|	fBodyAcc-std()-Z	|	body acceleration standard deviation frequency for Z axis.
50	|	fBodyAccJerk-mean()-X	|	Jerk body acceleration mean frequency for X axis.
51	|	fBodyAccJerk-mean()-Y	|	Jerk body acceleration mean frequency for Y axis.
52	|	fBodyAccJerk-mean()-Z	|	Jerk body acceleration mean frequency for Z axis.
53	|	fBodyAccJerk-std()-X	|	Jerk body acceleration standard deviation frequency for X axis.
54	|	fBodyAccJerk-std()-Y	|	Jerk body acceleration standard deviation frequency for Y axis.
55	|	fBodyAccJerk-std()-Z	|	Jerk body acceleration standard deviation frequency for Z axis.
56	|	fBodyGyro-mean()-X	|	body gyroscope mean frequency for X axis.
57	|	fBodyGyro-mean()-Y	|	body gyroscope mean frequency for Y axis.
58	|	fBodyGyro-mean()-Z	|	body gyroscope mean frequency for Z axis.
59	|	fBodyGyro-std()-X	|	body gyroscope standard deviation frequency for X axis.
60	|	fBodyGyro-std()-Y	|	body gyroscope standard deviation frequency for Y axis.
61	|	fBodyGyro-std()-Z	|	body gyroscope standard deviation frequency for Z axis.
62	|	fBodyAccMag-mean()	|	body acceleration magnititude mean frequency for 3 axis.
63	|	fBodyAccMag-std()	|	body acceleration magnititude standard deviation frequency for 3 axis.
64	|	fBodyAccJerkMag-mean()	|	Jerk body acceleration magnititude mean frequency for 3 axis.
65	|	fBodyAccJerkMag-std()	|	Jerk body acceleration magnititude standard deviation frequency for 3 axis.
66	|	fBodyGyroMag-mean()	|	body gyroscope magnititude mean frequency for 3 axis.
67	|	fBodyGyroMag-std()	|	body gyroscope magnititude standard deviation frequency for 3 axis.
68	|	fBodyGyroJerkMag-mean()	|	Jerk body gyroscope magnititude mean frequency for 3 axis.
69	|	fBodyGyroJerkMag-std()	|	Jerk body gyroscope magnititude standard deviation frequency for 3 axis.

