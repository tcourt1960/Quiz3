# This is the R script for Gathering and Cleaning data - Project Assignement

#Read in and clean up GDP data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv ","FGDP.csv")
gpd <- read.csv("FGDP.csv", stringsAsFactors=FALSE, header=FALSE)
gpd<-gpd[6:220,]
names(gpd)<-c("GPD_abbr","GPD_Rank","blank","Country", "GDP$","extra")
gpd<-gpd[,1:5]
gpd<-gpd[-3]
gpd$GPD_Rank<-as.integer(gpd$GPD_Rank)

#Read in and clean up educational data

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ","FEDSTATS.csv")
edu<-read.csv("FEDSTATS.csv",stringsAsFactors=FALSE, header=TRUE)
