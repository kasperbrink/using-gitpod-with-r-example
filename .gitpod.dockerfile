FROM rocker/tidyverse:latest AS rstudio

ENV PASSWORD=password

RUN R -e "install.packages(c('curl','openssl','git2r','gh','odbc','data.table'), repos='http://cran.us.r-project.org')"



EXPOSE 8787
