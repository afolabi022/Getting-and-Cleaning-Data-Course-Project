install.packages("dplyr")
install.packages("data.table")
# Download the dataset if not already downloaded
if (!file.exists("Dataset.zip")) {
  system("curl -o Dataset.zip https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
 }

# Unzip the dataset
if (!file.exists("UCI HAR Dataset")) {
  unzip("Dataset.zip")
}
# Load libraries
library(dplyr)

# Read training data
training_x <- read.table("UCI HAR Dataset/train/X_train.txt")
training_y <- read.table("UCI HAR Dataset/train/y_train.txt")
training_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read test data
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Load features and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("id", "activity"))

# Merge data
merged_x <- rbind(training_x, test_x)
merged_y <- rbind(training_y, test_y)
merged_subject <- rbind(training_subject, test_subject)

# Name the columns
colnames(merged_x) <- features$V2
colnames(merged_y) <- "Activity"
colnames(merged_subject) <- "Subject"
full_data <- cbind(merged_subject, merged_y, merged_x)
selected_columns <- grepl("mean\\(\\)|std\\(\\)", features$V2)
filtered_data <- full_data[, c(TRUE, TRUE, selected_columns)]
filtered_data$Activity <- activities[filtered_data$Activity, 2]

names(filtered_data) <- gsub("^t", "Time", names(filtered_data))
names(filtered_data) <- gsub("^f", "Frequency", names(filtered_data))
names(filtered_data) <- gsub("Acc", "Accelerometer", names(filtered_data))
names(filtered_data) <- gsub("Gyro", "Gyroscope", names(filtered_data))
names(filtered_data) <- gsub("Mag", "Magnitude", names(filtered_data))
names(filtered_data) <- gsub("BodyBody", "Body", names(filtered_data))


if (!require("dplyr")) {
  install.packages("dplyr")
}
library(dplyr)



tidy_data <- filtered_data %>%
  group_by(Subject, Activity) %>%
  summarise(across(everything(), mean))

# Write to file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)
version

tidy_data <- filtered_data %>%
  group_by(Subject, Activity) %>%
  summarise(across(everything(), mean))

# Write to file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)

read.table("tidy_data.txt")
export.table("tidy_data.txt")
