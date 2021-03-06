CleanDataProject
================

Project for Cleaning Data Coursera course

The execution of the run_analysis.R script will produce a file called tidyData.txt (also included in this Repo).  The only dependencies for this to run are as follows.
- The data being used, as provided on the course web site, is assumed to be unzipped and available in a directory called "data".  The data directory has two subdirectories, test and train, with the corresponding files.
- Also in the working directory is a file called newLabels.txt.  This is a csv file with new labels to use for the variables (i.e. column names).

As long as those files are available, the script should run without any additional setup or work.  The script works as follows:

1. Read in the data files for test and training
2. Merge the data together
3. Read the features and labels information provided
4. Pull out only the mean and Sdev columns 
5. Update the labels correctly (using the info in features)
6. Melt the data to condense the values for a tidy data set
7. Update the labels for the variables / column names
8. Write out the new file to tidyData.txt



