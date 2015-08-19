
# ------- LOAD NECESSARY LIBRARIES ---------------------------------------------
library(plyr)

# ------- DEFINE VARIABLES -----------------------------------------------------
# directory where the input dataset is extracted
zipdir <- "getdata-projectfiles-UCI HAR Dataset"

# path separator
sep <- "/"

# file name of the output tidy dataset
outputFileName <- "tidyDataset.txt"

# ------- DOWNLOAD AND UNZIP DATA ----------------------------------------------
if(!file.exists(zipdir))
{
        # Create the dir using that name
        dir.create(zipdir)
        
        # download the input zip file if it's not in the working dir
        zipFile <- "getdata-projectfiles-UCI HAR Dataset.zip"
        if(!file.exists(zipFile))
        {
                fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                download.file(fileUrl, destfile=zipFile, method="curl")
        }
        
        # Unzip the file into the dir
        unzip(zipFile, exdir=zipdir)
}

# ------- LOAD RAW DATASET ---------------------------------------------------------

# data set dir
dataSetDir <- list.files(zipdir)

#  train set
# 'train/X_train.txt': Training set.
# 'train/y_train.txt': Training labels.
subjectTrain <- read.table(paste(zipdir, dataSetDir[1], "train", "subject_train.txt", sep=sep))
trainingSet <- read.table(paste(zipdir, dataSetDir[1], "train", "X_train.txt", sep=sep))
trainingLabels <- read.table(paste(zipdir, dataSetDir[1], "train", "Y_train.txt", sep=sep))

#  test set
# 'test/X_test.txt': Test set.
# 'test/y_test.txt': Test labels.
subjectTest <- read.table(paste(zipdir, dataSetDir[1], "test", "subject_test.txt", sep=sep))
testingSet <- read.table(paste(zipdir, dataSetDir[1], "test", "X_test.txt", sep=sep))
testingLabels <- read.table(paste(zipdir, dataSetDir[1], "test", "Y_test.txt", sep=sep))

# 'features.txt': List of all features.
features <- read.table(paste(zipdir, dataSetDir[1], "features.txt", sep=sep))

# ------- PROCESSING -----------------------------------------------------------

# ------- 1. MERGING THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET -----

mergedSet <- rbind(trainingSet, testingSet)

# add variable names
colnames(mergedSet) <-  features$V2

# ------- 2. EXTRACTING ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD   -------
# -------    DEVIATION FOR EACH MEASUREMENT.  ----------------------------------

meanFeatures <- grep("mean", features$V2)
stdFeatures <- grep("std", features$V2)

onlyFeatures <- c(meanFeatures, stdFeatures)

mergedSet <- mergedSet[, onlyFeatures]

# ------- 3. USING DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES -----------
# -------    IN THE DATASET ----------------------------------------------------

# 'activity_labels.txt': activity labels
activityLabels <- read.table(paste(zipdir, dataSetDir[1], "activity_labels.txt", sep=sep))

# ------- 4. LABELING THE DATASET WITH DESCRIPTIVE VARIABLE NAMES. -------------

# add 'activity' column to the dataset
labels <- rbind(trainingLabels, testingLabels)
names(labels) <- "activity"
mergedSet <- cbind(mergedSet, labels)
mergedSet$activity <- activityLabels[mergedSet$activity, 2]

# add 'subject' column to the dataset
subjects <- rbind(subjectTrain, subjectTest)
names(subjects) <- "subject"
mergedSet <- cbind(subjects, mergedSet)

# remove '-' and () in the names
names(mergedSet) <- gsub("-mean", "Mean", names(mergedSet), ignore.case = TRUE)
names(mergedSet) <- gsub("-std", "Std", names(mergedSet), ignore.case = TRUE)
names(mergedSet) <- gsub('[-()]', '', names(mergedSet))

# ------- 5. CREATING INDEPENDANT TIDY DATASET, FROM THE DATASET IN STEP 4, ----
# -------    WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY ---------------
# -------    AND EACH SUBJECT -------------------------------------------------- 

tidyDataSet <- ddply(mergedSet, .(subject, activity), colwise(mean))

# write output file  
write.table(tidyDataSet, file=outputFileName, row.name=FALSE)