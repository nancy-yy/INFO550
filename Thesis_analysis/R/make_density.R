#! /usr/local/bin/Rscript

atac_cell <- read.csv("clean_data/atac_cell_fake_clean.csv", header=TRUE)

## Create a nice looking density estimate plot 
png("figs/density.png")
library(ggplot2)
p2 <- ggplot(data=atac_cell,
            mapping = aes(
                x = num_genes_expressed, 
                color = group,
                fill = group))
p2 + geom_density(alpha = .3)
dev.off()