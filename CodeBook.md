GitHub contains a code book that modifies and updates the available codebooks
with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

### 1. Raw Data Info

- Abstract <br/>
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

- Source <br/>
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws <br/>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### 2. Summary of the processed data (`tidydata.csv`)

- Variables

|  Name  |  Description  |
| ---- | ---- |
|  activityName  |  Each subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  |
|  subject  | Subjects who participated in training or test data sets. (1-30)  |
| OTHER VARIABLES| Domain Signal (time or freq) <br> The sensor signals (Accelerometer or Gyroscope) <br> signals (mean or std) <br> 3-axial (X, Y or Z.) |

- Values

Values in `tidydata.csv` represent the average of each variable for each activity and each subject.

### 3. Experiment Design

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

You can find more information from [README.md](https://github.com/hirkame/Getting-and-Cleaning-Data-Course-Project/blob/master/README.md)
