x<-read.table("A_Vs_NonA(B+C).txt",header=T,row.names=1)
for(i in 1:nrow(x))
{
a<-wilcox.test(as.numeric(x[i,1:11]),as.numeric(x[i,12:29]))
x<-read.table("A_Vs_NonA(B+C).txt",header=T)
var=paste(x[i,1],a$p.value,sep="\t")
write.table(var,"p_value.txt",col.names=F,append=T)
}


x<-read.table("A_Vs_NonA(B).txt",header=T,row.names=1)
for(i in 1:nrow(x))
{
a<-wilcox.test(as.numeric(x[i,1:11]),as.numeric(x[i,12:19]))
x<-read.table("A_Vs_NonA(B).txt",header=T)
var=paste(x[i,1],a$p.value,sep="\t")
write.table(var,"p_value.txt",col.names=F,append=T)
}

x<-read.table("A_Vs_NonA(C).txt",header=T,row.names=1)
for(i in 1:nrow(x))
{
a<-wilcox.test(as.numeric(x[i,1:11]),as.numeric(x[i,12:19]))
x<-read.table("A_Vs_NonA(C).txt",header=T)
var=paste(x[i,1],a$p.value,sep="\t")
write.table(var,"p_value.txt",col.names=F,append=T)
}

