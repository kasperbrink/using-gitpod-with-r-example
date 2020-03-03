FROM rocker/rstudio:3.6.1 AS rstudio

ENV PASSWORD=password

RUN R -e "install.packages('data.table',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('odbc',dependencies=TRUE, repos='http://cran.rstudio.com/')"

EXPOSE 8787
