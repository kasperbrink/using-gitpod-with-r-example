FROM rocker/rstudio:3.6.1 AS rstudio

ENV PASSWORD=password

RUN R -e "install.packages('data.table',dependencies=TRUE, repos='http://cran.rstudio.com/')"

EXPOSE 8787

ENV POST_URL https://jdbc.postgresql.org/download/postgresql-42.2.5.jar
RUN wget ${POST_URL}
RUN mv postgresql-42.2.5.jar /bin/
