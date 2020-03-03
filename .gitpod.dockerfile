FROM rocker/rstudio:3.6.1 AS rstudio

ENV PASSWORD=password

RUN R CMD install.packages(c('curl','openssl','git2r','gh','odbc'), repos='http://cran.us.r-project.org' )

EXPOSE 8787
