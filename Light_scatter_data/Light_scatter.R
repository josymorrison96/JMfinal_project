#Rscript using "for" loop from command line to run given set of light scatter csv files through script to generate 
#1) A baseline corrected plot of Intensity (A.U) (subtracts first Intensity value from all other Intensity values) 
#2) Plot this baseline corrected plot of Intensity against Time(min) 
#3) Save each plot as the name of the csv but is instead .pdf.
#Final result if used in combination of "for" loop written in "Plot_light_scatter.sh" will generate a list of baseline corrected plots of the csv files

#Loading packages
library(tidyverse)
library(lubridate)
library(dplyr)

args = commandArgs(trailingOnly=TRUE)
#Reading each csv file from what is specified in "Plot_light_scatter.sh"(all in the directory)
filein <- args[1]
Light_scatter <- read.csv(filein)

#Subtracting out the first value of Intensity (A.U.) from all other values of Intensity(A.U.) to generate baseline corrected value
Light_scatter_baseline_corrected <- mutate(Light_scatter, Intensity..a.u.._baseline_corrected = Intensity..a.u.. - first(Intensity..a.u..)) 
#Plotting Time(min) against the baseline corrected Intensity (A.U.) with labels and an arbitrary y limit based on looking at the data to make graphs consistent
graph <- ggplot(Light_scatter_baseline_corrected, aes(Time..min.,Intensity..a.u.._baseline_corrected)) + geom_line() + theme_bw() +
    labs(title = "Light scatter", x = "Time(min)", y = "Intensity(A.U.)") + ylim(-50, 300) + xlim(0, 15)
#Saving each plot as it's name as a .pdf file
ggsave(paste0("",filein,".pdf"), graph, device = NULL, width = 10, height = 8, dpi = 72)



  


