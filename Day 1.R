#Day 1 Example Plot
#import file
viremia <- read.csv("viremia_data_full.csv")

#must be capital V
View(viremia)

#name columns
colnames(viremia)<- c("Bird","n","Species","Family","Order","1","3","4","6")

#choose colors
cols<- c("black","grey",rainbow(26)[4:26])

#plot by species
plot(c(1,3,4,6),as.numeric(viremia[1, 6:9]),
     type= "l", lwd=2, ylim= c(0, max(viremia[,6:9],na.rm=TRUE)), xlab="Day Postinfection", ylab="Log PFU/ml Serum")
#loop to show all birds
for(i in 2:nrow(viremia)) {lines(c(1,3,4,6,as.numeric(viremia[i,6:9]),lwd =2, col=cols))}
