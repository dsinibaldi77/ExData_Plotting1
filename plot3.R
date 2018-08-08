

#load data for the plot
source("load_data.R")


#open PNG device
png(filename="plot3.png")


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

#Close the PNG device
dev.off()





     
