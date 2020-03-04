FROM rocker/tidyverse:latest AS rstudio

ENV PASSWORD=password

RUN mkdir -p /utils

COPY /utils/install.packages.R /utils/install.packages.R

RUN Rscript /utils/install.packages.R

EXPOSE 8787
