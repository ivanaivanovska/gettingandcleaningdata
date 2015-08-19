---
title: "Getting and Cleaning Data - Course Project"
output: html_document
---

This repository contains:

 - a tidy dataset (tidyDataset.txt)
 - the code book that describes the variables in the tidy dataset
 - a script 'run_analysis.R' containing the steps that were performed to derive this tidy dataset.

The raw dataset is available here:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>


The raw zip file is the input for the script. 
In case it is not downloaded and not unziped in the working directory, the script will do that as a first step. 
The zip file will be extracted in a directory named: 'getdata-projectfiles-UCI HAR Dataset' in the working directory.

Then, the script performs the following processing of the raw data:

1. Loads all necessary raw files: training and testing sets, subjects, labels, features.
2. Merges the training and test sets into one dataset.
3. Extracts only the variables corresponding to the mean and standard deviation for each measurement in the merged set.
4. Gets the description of the activities from the 'activity_labels' file.
5. Labels the merged dataset with the descriptive names
6. Adds the subjects to the merged set.
7. Creates an independant tidy dataset, from the dataset in step 6, with the average of each variable
   for each activity and each subject

The output of the script is a text file named "tidyDataset.txt" containing the new tidy set.
