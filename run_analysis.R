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
