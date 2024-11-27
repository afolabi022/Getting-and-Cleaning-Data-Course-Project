# **Getting and Cleaning Data Project**

## **Overview**
This project demonstrates the ability to collect, clean, and prepare data for analysis. The data used in this project comes from the Human Activity Recognition dataset, which was collected from the accelerometers and gyroscopes of a Samsung Galaxy S smartphone.

The resulting tidy dataset contains the average of each mean and standard deviation variable for each activity and subject.

---

## **Contents**
The repository contains the following files:
1. **`run_analysis.R`**: R script that performs the data cleaning and creates the tidy dataset.
2. **`tidy_data.txt`**: The final tidy dataset output from the script.
3. **`CodeBook.md`**: A codebook describing the variables, data, and transformations.
4. **`README.md`**: This file, explaining the project and repository.

---

## **Steps to Reproduce**
To replicate this analysis, follow these steps:

### **1. Download the Dataset**
- Download the original dataset from [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
- Extract the dataset into your working directory.

### **2. Clone the Repository**
Clone this repository to your local machine:
```bash
git clone https://github.com/YourUsername/YourRepositoryName.git
```

### **3. Run the Script**
- Open R or RStudio.
- Set your working directory to the folder containing the dataset and the `run_analysis.R` script.
- Run the script:
  ```R
  source("run_analysis.R")
  ```
  This will:
  - Merge the training and test datasets.
  - Extract mean and standard deviation measurements.
  - Replace activity codes with descriptive names.
  - Label the dataset with descriptive variable names.
  - Create a tidy dataset with the average of each variable for each activity and subject.

### **4. Output**
The script will generate a file named `tidy_data.txt` in your working directory.

---

## **Dependencies**
The following R packages are required:
- `dplyr`: Used for data manipulation.

Install them with:
```R
install.packages("dplyr")
```

---

## **How to Use the Tidy Dataset**
To read the tidy dataset into R, use:
```R
tidy_data <- read.table("tidy_data.txt", header = TRUE)
View(tidy_data)
```

---

## **License**
This project uses data from the Human Activity Recognition Using Smartphones dataset. Check the [](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for details about usage permissions.

---

Feel free to adjust this README to include additional details specific to your project! Let me know if you'd like help customizing it further.