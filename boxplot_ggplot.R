########Only 2 columns, 1st different classes as high low etc. and 2 column expression values
library(ggpubr)
library(ggpubr) 
abcd<-read.table("Treg1.txt",header=T)
p1 <- ggplot(abcd, aes(x = Tissue, y = Treg1, color=Tissue)) + geom_boxplot()
my_comparisons <- list( c("Normal","Allo_BMT"), c("Normal","Autoimmune"), c("Normal","Cord_Blood"), c("Normal","Hasimoto"), c("Normal","NHL"),c("Normal","T1DM"))
A1<-p1+stat_compare_means(comparisons = my_comparisons,label.y = c(16,20, 24, 28,32,36, 40))




library(reshape2) 
library(reshape)
library(ggplot2)
z<-read.table("L_H.txt",header=T)
df.m <- melt(z, id.var = "id")
##To keep the specifid order
##df.m$id <- factor(df.m$id , levels=c("Pre_Tx", "Pre_xRT", "Post_xRT"))
p<-ggplot(data = df.m, aes(x=variable, y=value)) + geom_boxplot(aes(fill=id))
p + facet_wrap( ~ variable, scales="free") + theme(legend.position = "top",axis.title.x = element_blank(),axis.title.y = element_blank())

abcd<-read.table("L_H.txt",header=T)
library(dplyr)
library(reshape)
library(reshape2)
x<-select(abcd,class,Macrophage,NK,Neutrophil,Tgd,CD4_T,CD8_T)
df.m <- melt(x, id.var = "class")
df.m$id <- factor(df.m$id , levels=c("R", "N"))
p<-ggplot(data = df.m, aes(x=variable, y=value)) + geom_boxplot(aes(fill=class))
p + facet_wrap( ~ variable, scales="free") + theme(legend.position = "top",axis.title.x = element_blank(),axis.title.y = element_blank())

###
coad<-z %>%
  filter(cancer_type=="COAD")
x<-select(coad,label,AXIN2,NKD1,RNF43)


abcd<-read.table("GTEx_TCGA_selected_genes_data_indication.txt",header=T)
abcd$Abb <- factor(abcd$Abb, levels=c("PRSTTE","ESPMCS","SKINNS","SKINS","WHLBLD","SALVG","KDNCTX","VAGINA","ADRNLG","LUNG","PNCREAS","FLLPNT","SPLEEN","CLNTRN","TESTIS","STMACH","THYROID","SMILEUM","CERVIXECTO","OVARY","BLADDER","ADPVSC","BREAST","PTTARY","HRTAA","CERVIXENDO","ARTCRN","ADPSBQ","CLNSIG","ESPGJUN","NERVET","ESPMSL","ARTAORT","UTERUS","LIVER","HRTLV","BRAIN","ARTTBL","MSCLSK","","PRAD","ESCA","OV","LUSC","CESC","HNSC","LUAD","STAD","ACC","THCA","TGCT","COAD","PAAD","DLBC","READ","KICH","BLCA","UCEC","UCS","BRCA","MESO","SKCM","GBM","KIRC","THYM","SARC","CHOL","KIRP","LGG","LIHC","PCPG","UVM"))
p1 <- ggplot(abcd, aes(x = Abb, y = GPC3, color=Class)) + geom_boxplot()
p1+coord_flip()
