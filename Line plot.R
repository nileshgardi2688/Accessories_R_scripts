setwd("E:/DrShilpeeDutt/Histone/NHEJ")
U87MG<-read.table("NHEJ_U87MG.txt",header=T)
SF268<-read.table("NHEJ_SF268.txt",header=T)
PS1<-read.table("NHEJ_PS1.txt",header=T)
PS2<-read.table("NHEJ_PS2.txt",header=T)

U<-U87MG[,-1]
S<-SF268[,-1]
PS1<-PS1[,-1]
PS2<-PS2[,-1]
genes<-as.matrix(U87MG[,1])
#par(mfrow=c(2,2))
for(i in 1:nrow(U))
{
par(mfrow=c(2,2))
final<-paste(genes[i,],"jpeg",sep=".")
jpeg(final)

plot(as.numeric(U[i,]),axes=F,xlab="",ylab="log2(TPM+1)",ylim=c(min(U[i,],S[i,],PS1[i,],PS2[i,]),max(U[i,],S[i,],PS1[i,],PS2[i,])),main=genes[i,1],type="b")
axis(2)
samples<-c("C","RE","R")
axis(1, at=seq_along(U[i,]),labels=as.character(samples), las=2)
box()

plot(as.numeric(S[i,]),axes=F,xlab="",ylab="log2(TPM+1)",ylim=c(min(U[i,],S[i,],PS1[i,],PS2[i,]),max(U[i,],S[i,],PS1[i,],PS2[i,])),main=genes[i,1],type="b")
axis(2)
samples<-c("C","RE","R")
axis(1, at=seq_along(S[i,]),labels=as.character(samples), las=2)
box()

plot(as.numeric(PS1[i,]),axes=F,xlab="",ylab="log2(TPM+1)",ylim=c(min(U[i,],S[i,],PS1[i,],PS2[i,]),max(U[i,],S[i,],PS1[i,],PS2[i,])),main=genes[i,1],type="b")
axis(2)
samples<-c("C","RE","R")
axis(1, at=seq_along(PS1[i,]),labels=as.character(samples), las=2)
box()

plot(as.numeric(PS2[i,]),axes=F,xlab="",ylab="log2(TPM+1)",ylim=c(min(U[i,],S[i,],PS1[i,],PS2[i,]),max(U[i,],S[i,],PS1[i,],PS2[i,])),main=genes[i,1],type="b")
axis(2)
samples<-c("C","RE","R")
axis(1, at=seq_along(PS2[i,]),labels=as.character(samples), las=2)
box()
dev.off()

}