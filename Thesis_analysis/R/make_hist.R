#! /usr/local/bin/Rscript

atac_cell <- read.csv("clean_data/atac_cell_fake_clean.csv", header=TRUE)

## Create a nice looking histogram 
png("figs/hist.png")
library(ggplot2)
#cell_sub <- atac_cell %>%
    #filter(group %in% c("A549_0h", "A549_1h", "A549_3h"))
p <- ggplot(data=atac_cell,
            mapping = aes(
                x = num_genes_expressed, 
                fill = group))
p + geom_histogram(bins = 20)
dev.off()
