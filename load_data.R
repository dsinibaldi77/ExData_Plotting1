
#set the working directory (pathwd must be customized)
pathwd<-"D:\\Dropbox\\R\\Coursera\\Exploratory Data Analysis\\Week1_assigment\\ExData_Plotting1"
setwd(pathwd)

#download the zip file with data for analysis in working directory
ulrzipfile<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(ulrzipfile,destfile="household_power_consumption.zip",method="libcurl")

#unzip the data into the working directory
unzip("household_power_consumption.zip")

#Evaluation charging time 
#system.time(EPowCons_all<-read.table("household_power_consumption.txt", sep = "", dec = "."))

#read all records from txt file
EPowCons_all<-read.table("household_power_consumption.txt", header=TRUE,sep = ";", dec = ".")

library(dplyr)
#Create new column datatempo as Datetime
aux1<-EPowCons_all %>% select(1:2)
datatempo<-aux1 %>% 
        transform(DateTime=paste(as.character(Date),' ', as.character(Time))) %>% 
        select(DateTime)
datatempo<-strptime(as.character(datatempo$DateTime),format="%d/%m/%Y %H:%M:%S")
#Create new column data as Date
data<-aux1 %>% select(Date)
data<-as.Date(as.character(data$Date),format="%d/%m/%Y")

#create data frame used for generate all plots, with cols 
#arranged for plots
EPowCons_for_plot<-EPowCons_all %>% select(-Date)
EPowCons_for_plot<-data.frame(data,datatempo,EPowCons_for_plot)
names(EPowCons_for_plot)<-gsub("datatempo","DateTime",names(EPowCons_for_plot))
names(EPowCons_for_plot)<-gsub("data","Date",names(EPowCons_for_plot))

#create data frame with only record desired
data_plot<-EPowCons_for_plot %>% filter(Date >= "2007-02-01" & Date <="2007-02-02")

#remove working Data
rm(aux1)
rm(datatempo)
rm(data)





