


#load data for the plot
source("load_data.R")


#open PNG device
png(filename="plot2.png")


with(data_plot,
     plot(DateTime,
          as.double(as.character(Global_active_power)),
          type="l",
          xlab="",
          ylab="Global Active Power (Kilowatts)"
     )
)


#Close the PNG device
dev.off()





     
