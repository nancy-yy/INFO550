From rocker/tidyverse

# install required R packages 
RUN Rscript -e "install.packages(c('kableExtra','ggplot2'))"


# make a project directory in the container
# make a output folder in the container
RUN mkdir /project
RUN mkdir /project/output

# copy contents of local foler to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R

# make container entry point bash
CMD make -C project Nanxi_Guo_INFO550.html
