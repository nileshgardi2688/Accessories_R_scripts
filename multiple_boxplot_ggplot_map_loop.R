abcd<-read.table("selected_genes.txt",header=T)
library(dplyr)
library(reshape)
library(reshape2)
library(ggplot2)
library(ggpubr)
library(tidyverse)

x<-select(abcd,response,CD274,CTLA4,DNMT3A,HAVCR2,LAG3,PDCD1,TIGIT,TOX,TCF7,ITGAE,ENTPD1,CBLB,CBL,PTPRC,CD3G,CD4,CD8A,CEACAM8,FCGR3A,ARG1,IL4R,S100A9,CD276,NT5E,FUT4,LILRB4,CD14,OLR1,ANPEP,CD40,CD34,ROS1,CD83,PTGS2,IRAK1,IRAK2,IRAK4,IRAK3)
df.m <- melt(x, id.var = "response")
df.m$response <- factor(df.m$response , levels=c("R", "N"))
df.m %>%
  group_split(variable) %>%
  map(~{
    analyte_name <- .$variable[1]
	tmp <- ggplot(., aes(response, value)) + geom_boxplot(aes(fill=response)) + ggtitle(analyte_name)
	my_comparisons <- list( c("R","N"))
	A1<-tmp+stat_compare_means(comparisons = my_comparisons)
	#A2<-A1 + facet_wrap( ~ variable, scales="free") + theme(legend.position = "top",axis.title.x = element_blank(),axis.title.y = element_blank())
    ggsave(paste0(analyte_name, '.png'), A1)
	
  })