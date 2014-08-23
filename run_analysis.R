library(plyr)

read = function() {
  xtest <<- read.table("UCI HAR Dataset/test/X_test.txt")
  ytest <<- read.table("UCI HAR Dataset/test/y_test.txt")
  xtrain <<- read.table("UCI HAR Dataset/train/X_train.txt")
  ytrain <<- read.table("UCI HAR Dataset/train/y_train.txt")
}

# Step 1: Combine test and train sets
read()
x = rbind(xtrain, xtest)
y = rbind(ytrain, ytest)
combined = cbind(x,y)

# Step 2: Subset to 'mean' and 'std' features
f = read.table("UCI HAR Dataset/features.txt")
f[,2] = as.character(f[,2]) # convert to char
fsub = grep("(mean|std)\\(\\)", f[,2])
csub = combined[,fsub]

# Step 3: Sub activity names
activity = read.table("UCI HAR Dataset/activity_labels.txt")
activity[,2] = as.character(activity[,2])
csub$activity = sapply(y, function(i) { activity[i,2] })

# Step 4: feature names
names(csub) = c(f[fsub,2], "activity")

# Step 5: avg of activity and subject
subTest = read.table("UCI HAR Dataset/test/subject_test.txt")
subTrain = read.table("UCI HAR Dataset/train/subject_train.txt")
subjects = rbind(subTrain,subTest)
names(subjects) = "subject"
subjectdata = cbind(subjects, csub)
subjectdata$subject = factor(subjectdata$subject)
subjectdata$activity = factor(subjectdata$activity)

# create the tidy data set
tidy=ddply(subjectdata, .(subject, activity), function(df) colMeans(df[,2:67]))