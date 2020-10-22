# INFO550

## My project

For my project, I will analyze ATAC-seq data. 

To analyze the data, you will need to install some R packages. The required packages can be installed using R commmads.

```{r}
installed_pkgs <- row.names(installed.packages())
pkgs <- c("kableExtra", "ggplot2")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}
```

## Execute the analysis

To execute the analysis, please download the Thesis_analysis folder. From that folder, please type commands as following in your terminal.

```{r}
make help
```
This will give you some help information about the Makefile.

```{r}
make install
```
This will install the required R packages.

```{r}
make Nanxi_Guo_INFO550.html
```
This will produce the report called Nanxi Guo_INFO550.html in your directory of Thesis_analysis folder.

Or, please just type 'make' in your terminal to get my report.


