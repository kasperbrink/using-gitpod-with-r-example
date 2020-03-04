FROM rocker/tidyverse:latest AS rstudio

ENV PASSWORD=password

RUN R -e "install.packages(c('curl','openssl','git2r','gh','odbc','data.table'), repos='http://cran.us.r-project.org')"

RUN R -e "git2r::clone("https://github.com/kasperbrink/using-gitpod-with-r-example.git", , local_path = "./rstudio/")"

EXPOSE 8787
