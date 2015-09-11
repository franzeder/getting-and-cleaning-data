library(dplyr)
library(plyr)

# Task 1 (merging training and test data sets to one) --------------------------

# create folder "data" if it does not exist
if(!dir.exists("./data")){dir.create("./data")}

# download zip-file
URL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
file <- "./data/temp"
download.file(URL, file, method = "curl")

# extract all files in zip-file to "/data", without creating additional folders
unzip(file, junkpaths = TRUE, exdir = "data")

# remove zip-file
file.remove(file)

# list all extracted files
list.files("data")

# reading train files
X_train <- tbl_df(read.table("data/X_train.txt"))
y_train <- tbl_df(read.table("data/y_train.txt"))
subject_train <- tbl_df(read.table("data/subject_train.txt"))

# changing colnames
features <- read.table("data/features.txt")
colnames(X_train) <- features[, 2]
colnames(y_train) <- "Activity"
colnames(subject_train) <- "Subject"


# merging train data into one dataset
train <- bind_cols(subject_train, y_train, X_train)

# adding variable ("Set") and filling it with "training" to dinsguish...
#       ... training and test data sets
train["Set"] <- "training"

# reading test files
X_test <- tbl_df(read.table("data/X_test.txt"))
y_test <- tbl_df(read.table("data/y_test.txt"))
subject_test <- tbl_df(read.table("data/subject_test.txt"))

# changing colnames
colnames(X_test) <- features[, 2]
colnames(y_test) <- "Activity"
colnames(subject_test) <- "Subject"

# merging test data into one dataset
test <- bind_cols(subject_test, y_test, X_test)

# adding variable ("Set") and filling it with "test" to dinsguish...
#       ... training and test data sets
test["Set"] <- "test"

# binding training and test dataset together
df <- bind_rows(train, test)


# Task 2 (Extracts only the measurements ... ----------------------------------
#       ... on the mean and the standard deviation for each measurement)

# getting the all the measurements with mean and standard deviation from...
#       ... feature file
measurements <- grep(".*mean.*|.*std.*", features[,2])
features_wanted <- as.vector(features[measurements, 2])

# creating new dataframe with subjects, labels, sets and measurements wanted
df2 <- df[, c("Subject", "Activity", "Set", features_wanted)]

# Task 3 (Uses descriptive activity names ... ---------------------------------
#       ... to name the activities in the data set)

df2$Activity <- as.factor(df2$Activity)
df2$Activity <- revalue(df2$Activity, c("1" = "WALKING", "2" = "WALKING_UPSTAIRS",
                                "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING",
                                "5" = "STANDING", "6" = "LAYING"))

# Task 4 (Appropriately labels the data set ... -------------------------------
#       ... with descriptive varibale names)

# deleting all special characters, using underscores for seperating words
names(df2) <- gsub("[-()]", "", names(df2))
names(df2) <- gsub("mean", "_Mean_", names(df2))
names(df2) <- gsub("std", "_STD_", names(df2))
names(df2) <- gsub("_$", "", names(df2))

# Task 5 (From the data in step 4, creates ... --------------------------------
#       ... a second, independent tidy data set with the average of each...
#       ... varibale for each activity and each subject.)

# grouping the dataset by "Subject", "Activity" and "Set"; summarise...
#        ... variables by calculating the average; save result to tidy_df
tidy_df <- df2 %>% group_by(Subject, Activity, Set) %>% 
        summarise_each(funs(mean))

# writing tidy_df to "tidy.txt" in folder "data"
write.table(tidy_df, "./data/tidy.txt", row.name = FALSE, quote = FALSE)
