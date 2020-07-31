# 1
# Load data from test & train file.
xtrain <- read.table("./data/train/X_train.txt")
ytrain <- read.table("./data/train/y_train.txt")
subjecttrain <- read.table("./data/train/subject_train.txt")
xtest <- read.table("./data/test/X_test.txt")
ytest <- read.table("./data/test/y_test.txt")
subjecttest <- read.table("./data/test/subject_test.txt")
# Merge test & train file.
train <- cbind(xtrain, ytrain, subjecttrain)
test <- cbind(xtest, ytest, subjecttest)
dat <- rbind(train, test)

# 2
# Get mean and std columns.
colname <- read.table("./data/features.txt")
meanstdcol <- grep("mean|std", colname$V2)
dat <- dat[, c(meanstdcol,  (ncol(dat) - 1), ncol(dat))]


# 3
# Name activities. (col:80)
activitycol <- ncol(dat) - 1
dat[,activitycol] <- as.factor(dat[,activitycol])
levels(dat[,activitycol]) <- as.factor(c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))


# 4 
# Assign names of variables.
names(dat)[1:(length(dat) - 2)] <- grep("mean|std", colname$V2, value = TRUE)
names(dat)[activitycol] <- "activityName"
names(dat)[length(dat)] <- "subject"
# Replace t & f in the first character.
names(dat) <- sub("^t", "time", names(dat))
names(dat) <- sub("^f", "freq", names(dat))
# Remove Brackets.
names(dat) <- sub("\\(\\)", "", names(dat))
names(dat) <- sub("Acc", "Accelerometer", names(dat))
names(dat) <- sub("Gyro", "Gyroscope", names(dat))
names(dat) <- sub("Mag", "Magnitude", names(dat))

 
# 5 Create a new data frame 
# with the average of each variable for each activity and each subject.
library(dplyr)
dat <- group_by(dat, activityName, subject)
newdat <- summarize_all(dat, mean, na.rm=TRUE)
write.csv(newdat, "tidydata.csv")
