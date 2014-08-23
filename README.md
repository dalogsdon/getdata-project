getdata-project
===============

Course project for Coursera "Getting and Cleaning Data" course (August 2014)

This project consists of an R script "run_analysis.R" that tidies the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) as long as it is in the working directory. Its output is described in the [codebook](./codebook.md).

Script Steps
------------
1. Reads test and train data and combines them into a single data frame
2. Subsets the dataframe into mean and standard deviation features
3. For each observation, maps activity index to its descriptive activity name
4. Names each feature column to its correct feature name
5. For each combination of subject and activity, creates a data frame containing the average of each feature
