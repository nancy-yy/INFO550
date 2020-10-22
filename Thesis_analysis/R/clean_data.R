#! /usr/local/bin/Rscript

atac_cell <- read.csv("raw_data/atac_cell_fake.csv")
table(is.na(atac_cell))
sum(is.na(atac_cell$nearest_higher_density_neighbor)) 
cell <- atac_cell[,-25]
write.csv(cell, "clean_data/atac_cell_fake_clean.csv")


