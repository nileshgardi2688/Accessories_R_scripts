library(cummeRbund)
setwd("cuffDIff")
cuff<-readCufflinks()
cuff

disp<-dispersionPlot(genes(cuff))
png("CountVsDispersion.png")
disp
dev.off()

genes.scv<-fpkmSCVPlot(genes(cuff))
png("logFPKMVsCV2(genes).png")
genes.scv
dev.off()

isoforms.scv<-fpkmSCVPlot(isoforms(cuff))
png("logFPKMVsCV2(isoform).png")
isoforms.scv
dev.off()

dens<-csDensity(genes(cuff))
png("log10FPKMVsdensity_withoutReplicates.png")
dens
dev.off()

densRep<-csDensity(genes(cuff),replicates=T)
png("log10FPKMVsdensity_withReplicates.png")
densRep
dev.off()

b<-csBoxplot(genes(cuff))
png("Boxplot_withoutReplicates.png")
b
dev.off()

brep<-csBoxplot(genes(cuff),replicates=T)
png("Boxplot_withReplicates.png")
brep
dev.off()
 
s<-csScatterMatrix(genes(cuff))
png("ScatterPlot_withoutReplicates.png")
s
dev.off()

sr<-csScatter(genes(cuff),"Pre_surgery","Post_surgery",smooth=T)
png("ScatterPlot_withReplicates.png")
sr
dev.off()

dend<-csDendro(genes(cuff))
png("dendrogram_withoutReplicates.png")
dend
dev.off()

dend.rep<-csDendro(genes(cuff),replicates=T)
png("dendrogram_withReplicates.png")
dend.rep
dev.off()

m<-MAplot(genes(cuff),"Pre_surgery","Post_surgery")
png("MAplot_withoutReplicates.png")
m
dev.off()

mCount<-MAplot(genes(cuff),"Pre_surgery","Post_surgery",useCount=T)
png("MAplot_withReplicates.png")
mCount
dev.off()

v<-csVolcanoMatrix(genes(cuff))
png("Volcano.png")
v
dev.off()

IndividualVolcano<-csVolcano(genes(cuff),"Pre_surgery","Post_surgery")
png("IndividualVolcano.png")
IndividualVolcano
dev.off()

#######Analysis started for differential genes

g<-read.table("Genes.txt",header=T)
myGeneIds<-as.character(g[,1])
myGenes<-getGenes(cuff,myGeneIds)

h<-csHeatmap(myGenes,cluster= 'both',labRow=F)
png("myDifferential_genes_heatmap.png")
h
dev.off()

h.no.clu<-csHeatmap(myGenes,cluster= 'row',labRow=F)
png("myDifferential_genes_heatmap_without_clustering.png")
h.no.clu
dev.off()

h.rep<-csHeatmap(myGenes,labRow=F,cluster='both',replicates=T)
png("myDifferential_genes_heatmap_with_replicates.png")
h.rep
dev.off()

h.rep.clu<-csHeatmap(myGenes,labRow=F,cluster='row',replicates=T)
png("myDifferential_genes_heatmap_with_replicates_without_clustering.png")
h.rep
dev.off()


################ Top genes analysis###############

#g<-read.table("merged_genes.txt")
#myGeneIDs<-as.character(g[,1])
#myGenes<-getGenes(cuff,myGeneIDs)

top10Up_ID<-head(myGeneIds,10)
top10Down_ID<-tail(myGeneIds,10)

top10Up_Genes<-getGenes(cuff,top10Up_ID)
top10Down_Genes<-getGenes(cuff,top10Down_ID)

################Plots for top 10 upregulated genes

h10_up<-csHeatmap(top10Up_Genes)
png("Heatmap of top10Up_genes without replicates.png")
h10_up
dev.off()

h10.rep_up<-csHeatmap(top10Up_Genes,replicates=T)
png("Heatmap of top10Up_genes with replicates.png")
h10.rep_up
dev.off()

bU<-expressionBarplot(top10Up_Genes)
png("Expression barplot of top10_up.png")
bU
dev.off()

################Plots for top 10 downregulated genes

h10_down<-csHeatmap(top10Down_Genes)
png("Heatmap of top10Down_genes without replicates.png")
h10_down
dev.off()

h10.rep_down<-csHeatmap(top10Down_Genes,replicates=T)
png("Heatmap of top10Down_genes with replicates.png")
h10.rep_down
dev.off()

bD<-expressionBarplot(top10Down_Genes)
png("Expression barplot of top10_down.png")
bD
dev.off()

x<-repFpkm(myGenes)
write.table(x,"NOTCH genes fpkm data.txt",sep="\t")