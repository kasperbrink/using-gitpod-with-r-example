FROM rocker/tidyverse:latest AS rstudio

ENV PASSWORD=password

RUN mkdir -p /utils

COPY /utils/install_packages.R /utils/install_packages.R

RUN Rscript /utils/install_packages.R

EXPOSE 8787
