# INFO550

## My project

For my project, I will analyze ATAC-seq data. 

To analyze the data, you will need to install some R packages. The required packages can be installed using R commmads.

```{r}
installed_pkgs <- row.names(installed.packages())
pkgs <- c("kableExtra", "ggplot2")
for(p in pkgs){
	if(!(p %in% install_pkgs)){
		install.packages(p)
	}
}
```

## Execute the analysis

To execute the analysis, from the project folder you can run

```{r}
Rscript -e "rmarkdown::render('Nanxi\ Guo_INFO550_HW3.Rmd')"
```
This will create a file called Nanxi Guo_INFO550_HW3.html output in your directory that contains the results.


