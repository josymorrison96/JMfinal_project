# Shell script to run all csv files in current directory through the Rscript "Light_scatter.R" which will generate baseline corrected .pdf plots for all csv files in directory
# Use: bash Plot_light_scatter.sh
for filename in *csv; do Rscript Light_scatter.R $filename; done