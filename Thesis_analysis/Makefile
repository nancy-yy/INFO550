
# Build the container: proj
build: 
	docker build -t nanxiguo/info550_roject .

## Nanxi_Guo_INFO550.html    : Generate final analysis report.
# using the cleaned data, generate the report
Nanxi_Guo_INFO550.html: figs/hist.png figs/density.png figs/hist.den.png R/Nanxi_Guo_INFO550.Rmd clean_data/atac_cell_fake_clean.csv
	cd R && Rscript -e "rmarkdown::render('Nanxi_Guo_INFO550.Rmd', output_file = '../output/Nanxi_Guo_INFO550.html')"


## install.html              : Install R packages for my analysis. 
install: R/install.R
	chmod +x R/install.R && R/install.R 

## atac_cell_fake_clean.txt. : Clean atac_cell_fake.csv by moving NAs.
clean_data/atac_cell_fake_clean.csv: R/clean_data.R raw_data/atac_cell_fake.csv
	chmod +x R/clean_data.R && R/clean_data.R

## hist.png                  : Create a nice looking histogram of num_genes_expressed
figs/hist.png: R/make_hist.R clean_data/atac_cell_fake_clean.csv 
	chmod +x R/make_hist.R && R/make_hist.R

## density.png               : Create a nice looking density estimate plot 
figs/density.png: R/make_density.R clean_data/atac_cell_fake_clean.csv 
	chmod +x R/make_density.R && R/make_density.R

## density.hist.png          : Plot density estimate and histogram together
figs/hist.den.png: R/make_hist.den.R clean_data/atac_cell_fake_clean.csv 
	chmod +x R/make_hist.den.R && R/make_hist.den.R

.PHNOY: help
help: Makefile
	@sed -n 's/^##//p' $<


