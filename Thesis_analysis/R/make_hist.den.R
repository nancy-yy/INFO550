#! /usr/local/bin/Rscript

atac_cell <- read.csv("clean_data/atac_cell_fake_clean.csv", header=TRUE)

## Plot density estimate and histogram together
png("figs/hist.den.png")
library(ggplot2)
p3 <- ggplot(data=atac_cell,
             mapping = aes(x = num_genes_expressed))
p3 + geom_histogram(mapping = aes(y = ..density..),alpha = .6)+
    geom_density(size=1.1)
dev.off()
