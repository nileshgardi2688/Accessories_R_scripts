source("PolarBarchart.R")
source("PolarHistogram.R")

a<-as.data.frame(read.table("Book9.txt",header=T))

polarBarChart(a, familyLabel=F, direction="outwards",binSize=0.3, spaceBar=0, spaceItem=0.2, spaceFamily=1.0, innerRadius=0.6, nguides=5)

polarBarChart(a, familyLabel=F, direction="inwards",binSize=0.3, spaceBar=0, spaceItem=0.2, spaceFamily=1.0, innerRadius=0.6, nguides=5)

polarHistogram(a, familyLabel = FALSE)

