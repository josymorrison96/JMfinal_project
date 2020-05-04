library(tidyverse)
library(lubridate)
library(dplyr)

args = commandArgs(trailingOnly=TRUE)

filein <- args[1]
fileout <- str_replace(filein,".csv","")
Light_scatter <- read.csv(filein)


Light_scatter_baseline_corrected <- mutate(Light_scatter, Intensity..a.u.._baseline_corrected = Intensity..a.u.. - first(Intensity..a.u..)) 
graph <- ggplot(Light_scatter_baseline_corrected, aes(Time..min.,Intensity..a.u.._baseline_corrected)) + geom_line() + theme_bw() +
    labs(title = "Light scatter", x = "Time(min)", y = "Intensity(A.U.)") + ylim(-50, 300) 
ggsave(paste0("",fileout,".pdf"), graph, device = NULL, width = 10, height = 8, dpi = 72)



  


