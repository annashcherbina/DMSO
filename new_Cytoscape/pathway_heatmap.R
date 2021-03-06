rm(list=ls())
data=read.table("pathways.signalling.summary.tsv",header=TRUE,sep='\t',row.names=1)
#data=read.table("pathways.cellcycle.tsv",header=TRUE,sep='\t',row.names=1)
library(gplots)
hmcols<-colorRampPalette(c("#e0f3db","#a8ddb5","#43a2ca"))(50)
colnames(data)=c("eG1\nDown With DMSO","lG1\nDown With DMSO","SG2M\nDown With DMSO","eG1\nUp With DMSO","lG1\nUpWithDMSO","SG2M\nUp With DMSO")
heatmap.2(as.matrix(data),
          col=hmcols,
          Rowv=TRUE,
          Colv=FALSE,
          density.info="none",
          scale="none",
          trace="none",
          dendrogram="none",
          margins=c(10,20),
          sepwidth=c(0.05, 0.05),  # width of the borders
          sepcolor='black',  
          rowsep=seq(0,nrow(data)),
          colsep=c(0,3,6),
          cexCol=1,
          keysize = 0.1)
