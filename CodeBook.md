---
title: CodeBook
author: Pascal Izzicupo
date: 28 February 2016
output: html_document
---

## Content

This code book contains informations about the source of the data, the transformation performed on the datasets, and the variables contained on the generated dataset.

## Source of data and Aim

The source data was the UCI Machine Learning Repository. Data were collected to complete the final assignement of the Getting and Cleaning Data Course instructured by Jeff Leek. The purpose of this project was to collect, work with, and clean a data set. 

### The operation required was to craete a script named run_analysis.R that:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### The operations done were:
1. downloaded the dataset
2. unzipped the data set into my working directory
3. Loaded test and training data 
4. Loaded features and activity information data and named them
5. Merged test, training and information data and named them
6. Extracted mean and std for each measurement and tidy renamed them
7. Created a tidy dataset containg averages and standard deviations

the run_analysis.R file contain further details.

## Variable names

 1 subjectsId                                        
 2 activity                                          
 3 timeBodyAccelerometer-mean()-X                    
 4 timeBodyAccelerometer-mean()-Y                    
 5 timeBodyAccelerometer-mean()-Z                    
 6 timeBodyAccelerometer-std()-X                     
 7 timeBodyAccelerometer-std()-Y                     
 8 timeBodyAccelerometer-std()-Z                     
 9 timeGravityAccelerometer-mean()-X                 
10 timeGravityAccelerometer-mean()-Y                 
11 timeGravityAccelerometer-mean()-Z                 
12 timeGravityAccelerometer-std()-X                  
13 timeGravityAccelerometer-std()-Y                  
14 timeGravityAccelerometer-std()-Z                  
15 timeBodyAccelerometerJerk-mean()-X                
16 timeBodyAccelerometerJerk-mean()-Y                
17 timeBodyAccelerometerJerk-mean()-Z                
18 timeBodyAccelerometerJerk-std()-X                 
19 timeBodyAccelerometerJerk-std()-Y                 
20 timeBodyAccelerometerJerk-std()-Z                 
21 timeBodyGyroscope-mean()-X                        
22 timeBodyGyroscope-mean()-Y                        
23 timeBodyGyroscope-mean()-Z                        
24 timeBodyGyroscope-std()-X                         
25 timeBodyGyroscope-std()-Y                         
26 timeBodyGyroscope-std()-Z                         
27 timeBodyGyroscopeJerk-mean()-X                    
28 timeBodyGyroscopeJerk-mean()-Y                    
29 timeBodyGyroscopeJerk-mean()-Z                    
30 timeBodyGyroscopeJerk-std()-X                     
31 timeBodyGyroscopeJerk-std()-Y                     
32 timeBodyGyroscopeJerk-std()-Z                     
33 timeBodyAccelerometerMagnitude-mean()             
34 timeBodyAccelerometerMagnitude-std()              
35 timeGravityAccelerometerMagnitude-mean()          
36 timeGravityAccelerometerMagnitude-std()           
37 timeBodyAccelerometerJerkMagnitude-mean()         
38 timeBodyAccelerometerJerkMagnitude-std()          
39 timeBodyGyroscopeMagnitude-mean()                 
40 timeBodyGyroscopeMagnitude-std()                  
41 timeBodyGyroscopeJerkMagnitude-mean()             
42 timeBodyGyroscopeJerkMagnitude-std()              
43 frequencyBodyAccelerometer-mean()-X               
44 frequencyBodyAccelerometer-mean()-Y               
45 frequencyBodyAccelerometer-mean()-Z               
46 frequencyBodyAccelerometer-std()-X                
47 frequencyBodyAccelerometer-std()-Y                
48 frequencyBodyAccelerometer-std()-Z                
49 frequencyBodyAccelerometer-meanFreq()-X           
50 frequencyBodyAccelerometer-meanFreq()-Y           
51 frequencyBodyAccelerometer-meanFreq()-Z           
52 frequencyBodyAccelerometerJerk-mean()-X           
53 frequencyBodyAccelerometerJerk-mean()-Y           
54 frequencyBodyAccelerometerJerk-mean()-Z           
55 frequencyBodyAccelerometerJerk-std()-X            
56 frequencyBodyAccelerometerJerk-std()-Y            
57 frequencyBodyAccelerometerJerk-std()-Z            
58 frequencyBodyAccelerometerJerk-meanFreq()-X       
59 frequencyBodyAccelerometerJerk-meanFreq()-Y       
60 frequencyBodyAccelerometerJerk-meanFreq()-Z       
61 frequencyBodyGyroscope-mean()-X                   
62 frequencyBodyGyroscope-mean()-Y                   
63 frequencyBodyGyroscope-mean()-Z                   
64 frequencyBodyGyroscope-std()-X                    
65 frequencyBodyGyroscope-std()-Y                    
66 frequencyBodyGyroscope-std()-Z                    
67 frequencyBodyGyroscope-meanFreq()-X               
68 frequencyBodyGyroscope-meanFreq()-Y               
69 frequencyBodyGyroscope-meanFreq()-Z               
70 frequencyBodyAccelerometerMagnitude-mean()        
71 frequencyBodyAccelerometerMagnitude-std()         
72 frequencyBodyAccelerometerMagnitude-meanFreq()    
73 frequencyBodyAccelerometerJerkMagnitude-mean()    
74 frequencyBodyAccelerometerJerkMagnitude-std()     
75 frequencyBodyAccelerometerJerkMagnitude-meanFreq()
76 frequencyBodyGyroscopeMagnitude-mean()            
77 frequencyBodyGyroscopeMagnitude-std()             
78 frequencyBodyGyroscopeMagnitude-meanFreq()        
79 frequencyBodyGyroscopeJerkMagnitude-mean()        
80 frequencyBodyGyroscopeJerkMagnitude-std()         
81 frequencyBodyGyroscopeJerkMagnitude-meanFreq()

