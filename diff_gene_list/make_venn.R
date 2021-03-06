rm(list=ls())
library(limma)
data=read.table("diff.gene.input.venn.txt",header=TRUE,stringsAsFactors = FALSE,check.names = FALSE)
data$Gene=NULL
png("differential_genes_venn.png",width=12,height=6,units='in',res=300)
vennDiagram(data,include=c("up","down"),cex=c(2,2,3),counts.col=c("blue","red"),circle.col=c("red","green","blue3"))
dev.off() 
