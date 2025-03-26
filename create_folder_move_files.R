setwd("D:/Backup_90046043/Work/Dr Mario/GTEx_Vs_TCGA_data/Single cell sequencing datasets/STAD/GSE150290/")
dirs <- list.dirs(path = 'Data/', recursive = F, full.names = F)

setwd("D:/Backup_90046043/Work/Dr Mario/GTEx_Vs_TCGA_data/Single cell sequencing datasets/STAD/GSE150290/Data")
for (i in dirs){
	#name <- gsub(".raw_gene_bc_matrices","",i)
	name <- strsplit(i,"_")
  
	#name[[1]][1]
  
	dir.create(file.path("D:/Backup_90046043/Work/Dr Mario/GTEx_Vs_TCGA_data/Single cell sequencing datasets/STAD/GSE150290/Updated_data1", name[[1]][1]))
  
	a<-list.files(i,recursive=TRUE,full.names = TRUE)
	file.copy(a, paste0("D:/Backup_90046043/Work/Dr Mario/GTEx_Vs_TCGA_data/Single cell sequencing datasets/STAD/GSE150290/Updated_data1/",name[[1]][1]))
  
}