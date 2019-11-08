#Exercise with Saras


#read data
octopus <- data.frame(oct_id = as.factor(1:500),
                      weight = rnorm(500,5,1))
write.csv(octopus, 'data/octopus_data.csv', row.names = FALSE)

octopus <- read.csv('data/octopus_data.csv')
 

#process data
octopus$log_weight < - log(octopus$weight)

#graphing
png('figure/hist_octopus_weight.png') #this opens up a png file open to editing. 
#this also switches the plotting device from the R default to the png
hist(octopus$weight, main = "Weight of blue-ring octopuses in VIC") 
#Can edit file specification here
dev.off() #this line closes off the temporary png plotting device
