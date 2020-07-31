### 1. Merges the training and the test sets to create one data set.

- Load data from test & train files.

```
xtrain <- read.table("./data/train/X_train.txt")
ytrain <- read.table("./data/train/y_train.txt")
subjecttrain <- read.table("./data/train/subject_train.txt")
xtest <- read.table("./data/test/X_test.txt")
ytest <- read.table("./data/test/y_test.txt")
subjecttest <- read.table("./data/test/subject_test.txt")
```

- Merge imported files. 

```
train <- cbind(xtrain, ytrain, subjecttrain)
test <- cbind(xtest, ytest, subjecttest)
dat <- rbind(train, test)
```

Now, you should get the data frame which has 563 variables and 10299 rows.

### 2. Extracts only the measurements on the mean and standard deviation for each measurement.

- Load the `features.txt` which contain the label data of the variables.

```
colname <- read.table("./data/features.txt")
```

- Get the number of list items which have "mean" or "std" in their label name.

```
meanstdcol <- grep("mean|std", colname$V2)
```

- Extract the data by selecting the columns. (*The last and the second last column have category and subject data.)

```
dat <- dat[, c(meanstdcol,  (ncol(dat) - 1), ncol(dat))]
```

### 3. Uses descriptive activity names to name the activities in the data set

- Name the activities in the data set through factor. 

```
activitycol <- ncol(dat) - 1
dat[,activitycol] <- as.factor(dat[,activitycol])
levels(dat[,activitycol]) <- as.factor(c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
```

### 4. Appropriately labels the data set with descriptive variable names.

- Assign names of variables in each column. 

```
names(dat)[1:(length(dat) - 2)] <- grep("mean|std", colname$V2, value = TRUE)
names(dat)[activitycol] <- "activityName"
names(dat)[length(dat)] <- "subject"
```

- Rename columns so that it becomes easy to understand.

```
names(dat) <- sub("^t", "time", names(dat))
names(dat) <- sub("^f", "freq", names(dat))
names(dat) <- sub("\\(\\)", "", names(dat))
names(dat) <- sub("Acc", "Accelerometer", names(dat))
names(dat) <- sub("Gyro", "Gyroscope", names(dat))
names(dat) <- sub("Mag", "Magnitude", names(dat))
```

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- Sort data out by activity and subject columns through `group_by` function.

```
library(dplyr)
dat <- group_by(dat, activityName, subject)
```

- Create a new data frame which has the average of each variable by each activity and subject. 

```
newdat <- summarize_all(dat, mean, na.rm=TRUE)
```

- Export it as a txt file.

```
write.table(newdat, "tidydata.txt",  row.name=FALSE)
```
