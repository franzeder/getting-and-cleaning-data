# Getting and Cleaning Data (032) - Course Project

The script `run_analysis.R` is the required R script to complete the course project of _Getting and Cleaning Data_ (032).

For running the script, the `dplyr` and `plyr` packages are required.

The script is divided in five major tasks.

#### Task 1
##### Merges the training and the test sets to create one data set

* creates a folder called `data`
* downloads and extracts the zip file
* reads the train and test files and binds them together to a single dataframe called `df`
* inserts a variable called `Set` to distinguish between the test and train dataset

#### Task 2 
##### Extracts only the measurements on the mean and standard deviation for each measurement 

* extracting all the measurements with mean and standard deviation
* creating a new dataframe (`df2`) with subjects, labels, sets and the measurements wanted

#### Task  3
##### Uses descriptive activity names to name the activities in the data set

#### Task 4
##### Appropriately labels the data set with descriptive variable names. 

* deleting all special characters, using underscores for seperating words (following Hadley Wickham's _Advanced R_)

#### Task 5
##### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* grouping dataset by `Subject`, `Activity`, and `Set`
* create a new, tidy dataset called `tidy_df`
* summarise variables by calculating the `MEAN` 
* writing `tidy_df` to `tidy.txt` in folder `data`


For more details, have a look at the comments in the script.

