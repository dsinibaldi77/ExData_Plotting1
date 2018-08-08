

#load data for the plot
source("load_data.R")


#open PNG device
png(filename="plot4.png")

par(mfrow=c(2,2))


#plot (1,1)
with(data_plot,
     plot(DateTime,
          as.double(as.character(Global_active_power)),
          type="l",
          xlab="",
          ylab="Global Active Power"
     )
)

#plot (1,2)
with(data_plot,
     plot(DateTime,
          as.double(as.character(Voltage)),
          type="l",
          xlab="datetime",
          ylab="Voltage"
     )
)


#plot (2,1)

with(data_plot,
     plot(DateTime,
          as.double(as.character(Sub_metering_1)),
          type="l",
          xlab="",
          ylab="Energy sub metering"
     )
)


with(data_plot,
     lines(DateTime,
           as.double(as.character(Sub_metering_2)),
           col="red"
     )
)

with(data_plot,
     lines(DateTime,
           as.double(as.character(Sub_metering_3)),
           col="blue"
     )
)

legend("topright",
       pch=c("-","-","-"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue")
)


#plot (2,2)
with(data_plot,
     plot(DateTime,
          as.double(as.character(Global_reactive_power)),
          type="l",
          xlab="datetime",
          ylab="Global_reactive_power"
     )
)

#write missing values y-axis
axis(2, at=c(0.3,0.1,0.5)) 

#Close the PNG device
dev.off()





     
