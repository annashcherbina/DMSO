rm(list=ls())
data=read.table("rsem.differentiation.txt",header=TRUE,sep='\t',stringsAsFactors = FALSE)
genes=data$Gene
data$Gene=NULL
data=asinh(data)
data=as.matrix(data)
library(gplots)
heatmap.2(data,
          Rowv=TRUE,
          Colv=FALSE,
          col=bluered(50),
          symbreaks=FALSE,
          dendrogram = "none",
          main="Differentiation Genes (GO:0030154)",
          labRow="",
          density.info = "none",
          trace="none",
          scale="none",
          colsep=seq(0,ncol(data)),
          rowsep=c(0,nrow(data)),
          sepwidth = c(0.01,0.05),
          sepcolor = "black",
          margins=c(10,5))