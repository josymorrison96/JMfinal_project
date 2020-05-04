# JMfinal_project

# The purpose of this repository is to automate the generation of plots based on csv files
# The csv files that I want to analyze for Light Scatter contain two columns: Time(min)(x-axis) and Intensity (A.U.)(y-axis)

# Utilizing the scripts in this repository will generate the following for ease of analysis (with examples provided in Light_scatter_data folder):
# 1) A baseline corrected column of Intensity (A.U) (subtracts first Intensity value from all other Intensity values for each   csv file) 
# 2) It will plot these baseline corrected values of Intensity against Time(min) 
# 3) Lastly, it will save each plot as the name of the file with .pdf added to the end

# To generate these plot, do the following steps:
# 1) Upload all csv files as its own folder 
# 2) Copy both "Light_scatter.R" and "Plot_light_scatter.sh" to the folder containing the csv files
# 3) Once in directory containing your csv files and two scripts, use the command 'bash Plot_light_scatter.sh' to generate      plots of each csv file as a pdf

# This is very helpful when you have many many csv files and you simply want to see the data plotted quickly with the baseline  corrected values