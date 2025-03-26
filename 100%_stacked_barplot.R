##Preferrsed
#"D:\Backup_90046043\Work\Dr Mario\GTEx_Vs_TCGA_data\Single cell sequencing datasets\OVCA\OV_5lack\results\AND_OR\Total_no_cells_patients.txt"
data<-read.table("Total_no_cells_patients.txt",header=T)
df.m <- melt(data, id.var = "id")
df.m$id <- factor(df.m$id , levels=c("T_OvC28-P3","T_OvC31-3","T_OvC28-R2","T_OvC28-R1","T_OvC31-1","T_OvC28-P4","T_OvC28-P2","T_OvC0015-P7","T_OvC28-P1","T_OvC0014-Cancer4","T_OvC24-T77","T_OvC06-9","T_OvC0015-P2","T_Ovc08-EOC136","T_OvC28-M2","T_OvC0015-P3","T_OvC12_P13","T_OvC06-8","T_OvC01-624","T_OvC0014-Cancer2","T_OvC0014-Cancer6","T_OvC12_P12","T_OvC12_P14","T_Ovc08-EOC733","T_OvC01-727","T_OvC24-T59","T_OvC31-2","T_OvC24-T90","T_OvC0014-Cancer1","T_Ovc08-EOC1005","T_OvC0015-P6","T_OvC0014-Cancer7","T_Ovc08-EOC443","T_OvC28-M1","T_OvC0015-P1","T_OvC0015-P5","T_Ovc08-EOC153","T_OvC12_P11","T_Ovc08-EOC87","T_OvC01-316","T_OvC0014-Cancer3","T_OvC0014-Cancer5","T_Ovc08-EOC372","T_Ovc08-EOC3","T_OvC24-T89","T_OvC24-T76","T_Ovc08-EOC227","T_Ovc08-EOC540","T_OvC20-2022","T_Ovc08-EOC349","T_OvC0022-T051110","T_OvC12_P15","T_OvC0022-T072817","T_OvC16-cd39-01-s4","T_OvC0022-T042719","T_OvC0015-P4","T_OvC0022-T051209","T_OvC0022-T022719","T_OvC16-cd39-01-s5","T_OvC0022-T041218","T_OvC16-cd39-01-s3","T_OvC0022-T021518","T_OvC0022-T042718","T_OvC16-cd39-01-s6","T_OvC16-cd39-01-s2","T_OvC16-cd39-01-s1","T_OvC0022-T082219","N_OvC10-donor_2","N_OvC11_P3","N_OvC11_P2","N_OvC0014-Norm5","N_OvC10-donor_1","N_OvC10-donor_3","N_OvC11_P1","N_OvC11_P5","N_OvC11_P7","N_OvC10-donor_4","N_OvC11_P6","N_OvC11_P8","N_OvC0014-Norm4","N_OvC11_P4","N_OvC0014-Norm3","N_OvC0014-Norm2","N_OvC0014-Norm1"))
ggplot(df.m, aes(fill=variable, y=value, x=id,)) +
geom_bar(position="fill", stat="identity",width = 0.6)+coord_flip()+xlab("")+ylab("")



###VTCN1_pos
data<-read.table("VTCN1_pos_T.txt",header=T)
df.m <- melt(data, id.var = "id")
#samples were sorted based on total number of positive cells
df.m$id <- factor(df.m$id , levels=c("T_OvC24-T59","T_OvC24-T77","T_OvC06-9","T_OvC06-8","T_Ovc08-EOC136","T_OvC28-R1","T_OvC31-3","T_OvC31-1","T_Ovc08-EOC733","T_OvC0014-Cancer1","T_OvC12-P14","T_OvC12-P13","T_OvC01-316","T_OvC12-P11","T_OvC0014-Cancer6","T_OvC28-R2","T_OvC01-624","T_OvC12-P12","T_OvC0015-P3","T_OvC0014-Cancer2","T_OvC28-P1","T_Ovc08-EOC443","T_OvC28-P3","T_OvC24-T90","T_OvC0014-Cancer4","T_Ovc08-EOC1005","T_OvC0015-P7","T_OvC28-P4","T_OvC0015-P2","T_OvC24-T76","T_OvC0014-Cancer7","T_OvC0015-P1","T_OvC28-P2","T_OvC01-727","T_Ovc08-EOC153","T_OvC28-M2","T_Ovc08-EOC372","T_Ovc08-EOC3","T_OvC0014-Cancer3","T_OvC0014-Cancer5","T_OvC0015-P6","T_Ovc08-EOC87","T_OvC24-T89","T_OvC0022-T051110","T_OvC31-2","T_Ovc08-EOC227","T_Ovc08-EOC540","T_OvC0022-T072817","T_OvC0022-T042719","T_OvC28-M1","T_OvC20-2022","T_OvC0015-P5","T_OvC0022-T022719","T_OvC12-P15","T_Ovc08-EOC349","T_OvC0022-T021518","T_OvC16-cd39-01-s4","T_OvC0022-T041218","T_OvC0022-T042718","T_OvC0015-P4","T_OvC0022-T051209","T_OvC16-cd39-01-s3","T_OvC16-cd39-01-s5","T_OvC16-cd39-01-s2","T_OvC16-cd39-01-s6","T_OvC16-cd39-01-s1","T_OvC0022-T082219"
))
ggplot(df.m, aes(fill=variable, y=value, x=id,)) +
geom_bar(position="stack", stat="identity",width = 0.6)+coord_flip()+xlab("")+ylab("")

data<-read.table("VTCN1_pos_N.txt",header=T)
df.m <- melt(data, id.var = "id")
#samples were sorted based on total number of positive cells
df.m$id <- factor(df.m$id , levels=c("N_OvC10-donor-2","N_OvC10-donor-3","N_OvC10-donor-1","N_OvC11-P3","N_OvC11-P7","N_OvC11-P5","N_OvC11-P6","N_OvC11-P2","N_OvC0014-Norm5","N_OvC10-donor-4","N_OvC0014-Norm4","N_OvC11-P8","N_OvC11-P1","N_OvC11-P4","N_OvC0014-Norm3","N_OvC0014-Norm2","N_OvC0014-Norm1"

))
ggplot(df.m, aes(fill=variable, y=value, x=id,)) +
geom_bar(position="stack", stat="identity",width = 0.6)+coord_flip()+xlab("")+ylab("")



#less useful
data<-as.matrix(read.table("Total_no_cells_patients.txt"))
head(data)
data<-data[-1,]
data<-data[,-1]
head(data)
data<-matrix(as.numeric(data),ncol=8)
colnames(data) <- c("B_cell","Endothelial_cell","Epithelial_cell","Fibroblast","Mast_cell","Myeloid_cell","Pericyte","T_cell")
rownames(data) <- c("OvC01-316","OvC01-624","OvC01-727","OvC06-8","OvC06-9","Ovc08-EOC1005","Ovc08-EOC136","Ovc08-EOC153","Ovc08-EOC227","Ovc08-EOC3","Ovc08-EOC349","Ovc08-EOC372","Ovc08-EOC443","Ovc08-EOC540","Ovc08-EOC733","Ovc08-EOC87","OvC12_P11","OvC12_P12","OvC12_P13","OvC12_P14","OvC12_P15","OvC0014-Cancer1","OvC0014-Cancer2","OvC0014-Cancer3","OvC0014-Cancer4","OvC0014-Cancer5","OvC0014-Cancer6","OvC0014-Cancer7","OvC0015-P1","OvC0015-P2","OvC0015-P3","OvC0015-P4","OvC0015-P5","OvC0015-P6","OvC0015-P7","OvC16-cd39-01-s1","OvC16-cd39-01-s2","OvC16-cd39-01-s3","OvC16-cd39-01-s4","OvC16-cd39-01-s5","OvC16-cd39-01-s6","OvC20-20â€“22","OvC0022-T021518","OvC0022-T022719","OvC0022-T041218","OvC0022-T042718","OvC0022-T042719","OvC0022-T051110","OvC0022-T051209","OvC0022-T072817","OvC0022-T082219","OvC24-T59","OvC24-T76","OvC24-T77","OvC24-T89","OvC24-T90","OvC28-M1","OvC28-M2","OvC28-P1","OvC28-P2","OvC28-P3","OvC28-P4","OvC28-R1","OvC28-R2","OvC31-1","OvC31-2","OvC31-3","OvC10-donor_1","OvC10-donor_2","OvC10-donor_3","OvC10-donor_4","OvC11_P1","OvC11_P2","OvC11_P3","OvC11_P4","OvC11_P5","OvC11_P6","OvC11_P7","OvC11_P8","OvC0014-Norm1","OvC0014-Norm2","OvC0014-Norm3","OvC0014-Norm4","OvC0014-Norm5")
library(RColorBrewer)
coul <- brewer.pal(3, "Set3")

data<-t(data)

# Transform this data in %
data_percentage <- apply(data, 2, function(x){x*100/sum(x,na.rm=T)})
 
# Make a stacked barplot--> it will be in %!
barplot(data_percentage, col=coul , border="white")
barplot(data_percentage, col=coul , border="white",horiz=T,legend=rownames(data))