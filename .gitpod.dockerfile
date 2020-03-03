FROM gitpod/workspace-postgres AS postgres
COPY . /src
WORKDIR /src

FROM rocker/rstudio:3.6.1 AS rstudio

ENV PASSWORD=password

RUN R -e "install.packages('data.table',dependencies=TRUE, repos='http://cran.rstudio.com/')"

EXPOSE 8787
COPY --from=postgres .

