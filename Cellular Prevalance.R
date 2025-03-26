x<-read.table("02_cluster",header=T)
plot(x$mean[1:5],pch=19,type="p",ylim=c(0,1),axes=F,ylab="Cellular Prevalance",col="red",lwd=2,xlab="")
axis(2)
samples<-c("02_Bio","02_Sur","02_Rec1","02_Rec2","02_Rec3")
axis(1, at=seq_along(x$mean[1:5]),labels=as.character(samples), las=2)

lines(1:5,x$mean[1:5],col="red",lwd=4)
lines(rbind(1:5,1:5,NA),rbind(x$mean[1:5]-x$std[1:5],x$mean[1:5]+x$std[1:5],NA),lwd=2)

lines(1:5,x$mean[6:10],col="green",lwd=4)
lines(rbind(1:5,1:5,NA),rbind(x$mean[6:10]-x$std[6:10],x$mean[6:10]+x$std[6:10],NA),lwd=2)

lines(1:5,x$mean[11:15],col="blue",lwd=4)
lines(rbind(1:5,1:5,NA),rbind(x$mean[11:15]-x$std[11:15],x$mean[11:15]+x$std[11:15],NA),lwd=2)

lines(1:5,x$mean[16:20],col="black",lwd=4)
lines(rbind(1:5,1:5,NA),rbind(x$mean[16:20]-x$std[16:20],x$mean[16:20]+x$std[16:20],NA),lwd=2)


lines(1:5,x$mean[21:25],col="cyan",lwd=4)
lines(rbind(1:5,1:5,NA),rbind(x$mean[21:25]-x$std[21:25],x$mean[21:25]+x$std[21:25],NA),lwd=2)

lines(1:5,x$mean[26:30],col="darkmagenta",lwd=4)
lines(rbind(1:5,1:5,NA),rbind(x$mean[26:30]-x$std[26:30],x$mean[26:30]+x$std[26:30],NA),lwd=2)

legend("topright", inset=c(-0.2,0), c("0","1","2","3","4","5"), lty=1, title="Cluster",col=c("red","green","blue","black","cyan","darkmagenta"),lwd=4)



##############################07
x<-read.table("07_cluster",header=T)
plot(x$mean[1:4],pch=19,type="p",ylim=c(0,1),axes=F,ylab="Cellular Prevalance",col="red",lwd=2,xlab="")
axis(2)
samples<-c("07_Bio","07_Rec1","07_Rec2","07_Rec3")
axis(1, at=seq_along(x$mean[1:4]),labels=as.character(samples), las=2)

lines(1:4,x$mean[1:4],col="red",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[1:4]-x$std[1:4],x$mean[1:4]+x$std[1:4],NA),lwd=2)

lines(1:4,x$mean[5:8],col="green",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[5:8]-x$std[5:8],x$mean[5:8]+x$std[5:8],NA),lwd=2)

lines(1:4,x$mean[9:12],col="blue",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[9:12]-x$std[9:12],x$mean[9:12]+x$std[9:12],NA),lwd=2)

lines(1:4,x$mean[13:16],col="black",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[13:16]-x$std[13:16],x$mean[13:16]+x$std[13:16],NA),lwd=2)


lines(1:4,x$mean[17:20],col="cyan",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[17:20]-x$std[17:20],x$mean[17:20]+x$std[17:20],NA),lwd=2)

lines(1:4,x$mean[21:24],col="darkmagenta",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[21:24]-x$std[21:24],x$mean[21:24]+x$std[21:24],NA),lwd=2)

lines(1:4,x$mean[25:28],col="deeppink",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[25:28]-x$std[25:28],x$mean[25:28]+x$std[25:28],NA),lwd=2)

lines(1:4,x$mean[29:32],col="gold",lwd=4)
lines(rbind(1:4,1:4,NA),rbind(x$mean[29:32]-x$std[29:32],x$mean[29:32]+x$std[29:32],NA),lwd=2)

legend("topright", inset=c(-0.2,0), c("0","1","2","3","4","5","6","7"), lty=1, title="Cluster",col=c("red","green","blue","black","cyan","darkmagenta","deeppink","gold"),lwd=4)