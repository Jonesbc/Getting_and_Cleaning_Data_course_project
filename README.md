# Getting_and_Cleaning_Data_course_project
===========================================================================
Files for Coursera's Getting and Cleaning Data course project
- "data_analysis.R": R code for obtaining, cleaning, and tidying, and producing "tidy_dataset.txt"
- "code book": Data dictionary for "tidy_dataset.txt"
- "tidy_dataset.txt": dataset based on Anguita et al. (2012)
============================================================================
-The file "tidy_dataset.txt" includes data from the Human Activity Recognition Using Smartphones Dataset 
Version 1.0 (Reyes-Ortiz et al. 2012)

-"tidy_dataset.txt" can be loaded into R with:
> data <- read.table(file_path, header = TRUE); View(data) ##note: "file_path" should be replaced with the actual file path of the downloaded "tidy_dataset.txt" file
===========================================================================
Explination of the scripts contained in "data_analysis.R"

Explainations can also be found in "data_analysis.R" following "##"

1. download data into working directory.
2. unzip and extract folder into working directory.
2. read files of original data and check dimensions.
2. rename columns with rename(package:dplyr).
3. bind columns with bind_rows() from package:dplyr.
4. Add a new variable "group" with two levels, "train" and "test".
5. move the group variable to the 2nd column.
6. check datasets.
7. combine datasets.
8. find mean() and std() columns.
9. rename measurement variables (i.e., change the V1, V2, V3...) read features.txt, which has all the variable names of the measurements.
10. extract the variable names from "features" into a character vector.
11. rename the measurement variable labels.
12. find position of variables with "mean()" and std() in the name.
13. combine vectors to include all positions for mean and standard deviation measurments.
14. add 3 positions to all values in the "all_pos" vector to account for the first three variables in "activity_recognition.
15. reate new dataset with only the mean and standard deviation measures.
16. check dataset.
17. rename the values of the "activity" variable to indicate what they actually are. read activity_labels.txt, which has all the names of the levels of "activity".
18. extract the labels from "act_labels" into a character vector.
19. use mapvalues() (package:plyr) to relabel the values for the "activity" variable of "data".
20. creates a second, independent tidy data set with the average of each variable for each activity and each subject. Group the data by "activity" then "subject".
21. Use summarise_each() (package:dplyr) to calculate the means of all measurements for each combination of the grouped variables.
22. write the tidy dataset to file.
================================================================================
References:
1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 2012. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL). Vitoria-Gasteiz, Spain. Dec 2012.


