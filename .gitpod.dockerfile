FROM rocker/rstudio:3.6.1 AS rstudio

ENV PASSWORD=password

ADD add_r_kernel.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/add_pkgs.sh && \ 
    /usr/local/bin/add_pkgs.sh

EXPOSE 8787
