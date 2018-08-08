

#load data for the plot
source("load_data.R")

#open PNG device
png(filename="plot1.png")

with(data_plot,
     hist(as.double(as.character(Global_active_power)),
          main="Global Active Power",
          xlab="Global Active Power (Kilowatts)",
          col="red"
          )
)

#Close the PNG device
dev.off()


