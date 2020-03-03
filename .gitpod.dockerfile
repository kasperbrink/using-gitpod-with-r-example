FROM rocker/rstudio:3.6.1

ENV PASSWORD=password

RUN R -e "install.packages('data.table',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('jsonlite',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tseries',dependencies=TRUE, repos='http://cran.rstudio.com/')" 

EXPOSE 8787
