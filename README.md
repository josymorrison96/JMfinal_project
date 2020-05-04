# JMfinal_project

# The purpose of this repository is to automate the generation of plots based on csv files
# The csv files show two columns: Time(min)(x-axis) and Intensity (A.U.)(y-axis)

# Utilizing the scripts in this repository will generate the following for ease of analysis (with examples provided):
# 1) A baseline corrected column of Intensity (A.U) (subtracts first Intensity value from all other Intensity values for each   csv file) 
# 2) It will plot this baseline corrected plot of Intensity against Time(min) 
# 3) Save each plot as the name of the csv but is instead .pdf.

# To generate these plot, do the following steps:
# 1) Upload all csv files as its own folder 
# 2) Copy both "Light_scatter.R" and "Plot_light_scatter.sh" to the folder containing the csv files
# 3) Once in directory containing your csv files and two scripts, use the command 'bash Plot_light_scatter.sh' to generate      plots of each csv file as a pdf

# This is very helpful when you have many many csv files and you simply want to see the data plotted quickly with the baseline  corrected values