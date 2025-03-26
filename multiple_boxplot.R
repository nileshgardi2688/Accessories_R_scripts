#dir.create("C:/Users/Nilesh/Desktop/Breast cancer Node_analysis/Neg_node/cuffdiff/Boxplots/", showWarnings = TRUE, recursive = FALSE)

myGeneIds<-c("XLOC_000258","XLOC_000807","XLOC_001071","XLOC_001189","XLOC_001210","XLOC_001741","XLOC_001787","XLOC_003150","XLOC_003473","XLOC_004434","XLOC_004896","XLOC_005061","XLOC_005715","XLOC_006312","XLOC_006760","XLOC_006792","XLOC_006872","XLOC_007029","XLOC_008250","XLOC_009303","XLOC_009584","XLOC_009894","XLOC_010630","XLOC_010684","XLOC_011321","XLOC_011506","XLOC_012589","XLOC_013041","XLOC_013486","XLOC_013663","XLOC_014378","XLOC_014603","XLOC_014772","XLOC_015076","XLOC_015251","XLOC_015299","XLOC_016018","XLOC_016377","XLOC_016682","XLOC_017269","XLOC_018030","XLOC_018766","XLOC_018919","XLOC_020278","XLOC_022847")
myGenes<-getGenes(cuff,myGeneIds)
s<-repFpkm(myGenes)
write.table(as.matrix(s),"NOTCH_genes_data.txt",sep="\t")

x<-read.table("NOTCH_genes_data.txt",header=T)
for(i in seq(from=1, to=90, by=2))
{
a<-t.test(x[,i],x[,i+1])
var=paste("p_value=",a$p.value,sep="")
x1<-as.matrix(read.table("NOTCH_genes_data.txt"))
infile <- paste(x1[1,i],".png",sep="")
var1=paste(x1[1,i],a$p.value,sep="\t")
write.table(var1,"p_value.txt",sep="\t",col.names=F,append=T)
png(infile)
boxplot(x[,i],x[,i+1],main=var,names=c("Normal","Tumor"))
dev.off()
}

y<-read.table("37_Sameer_HMT_log2.txt",header=T)
x<-y[,-1]

genes<-as.matrix(y[,1])
par(mfrow=c(6,6))
for(i in 1:nrow(x)) 
{
jpeg(i)
plot(as.numeric(x[i,]),axes=F,xlab="",ylab="log2(TPM+1)",ylim=c(min(as.numeric(x[i,])),max(as.numeric(x[i,]))),main=genes[i,1],type="b")
#plot(as.numeric(x[i,]),axes=F,xlab="",ylab="log2(TPM+1)",ylim=c(0,8),main=genes[i,1],type="b")
axis(2)
samples<-c("C","RE","R")
axis(1, at=seq_along(x[i,]),labels=as.character(samples), las=2)
box()
dev.off()
}




