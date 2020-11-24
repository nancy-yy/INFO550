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

## Using DockerHub

As can be seen, the latest Makefile contains make build statement that builds the docker image. 

### Download a built Docker image from my DockerHub
In your root directory, please type command as following in your terminal to download my Docker image:

```{r}
docker pull nanxiguo/info550_project
```
In info550_project repository, there is a Thesis_project folder which contains all the files, data and RScripts required for my project.

To see if you docker pull my repository successfully, please type 'docker images' in your terminal. If you are able to see an image called 'nanxiguo/info550_project', then you are done.

### Two ways to retrieve the final report from the image
#### Do not need to download the Thesis_analysis folder

In your root directory, please type command as following:

```{r}
docker run -v ~/local_output:/project/output nanxiguo/info550_project
```
In this way, you are mounting the /project/output directory in the image to your local directory (local_output folder). 

To view the final report, please find local_output folder in your root directory and the Nanxi_Guo_INFO550.html is in the local_output folder.

#### Need to download Thesis_analysis folder to your local computer

Within the Thesis_analysis folder, please use the command (be sure to modify the local path to the path that contains my Thsis_analysis folder) as following. 

```{r}
docker run -v Your/local/path/of/Thesis_analysis/local_output:/project/output nanxiguo/info550_project

```
For instance, I download my Thesis_analysis folder in ~/Desktop/INFO550/Thesis_analysis:

```{r}
docker run -v ~/Desktop/INFO550/Thesis_analysis/local_output:/project/output nanxiguo/info550_project

```
In this way, you are mounting the /project/output directory in the image to your local directory (local_output folder).

To view the final report, please find local_output folder in Thesis_analysis folder and the Nanxi_Guo_INFO550.html is in the Thesis_analysis/local_output folder.
