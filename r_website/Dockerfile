FROM rocker/shiny:4.0.5


RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev

RUN R -e 'install.packages(c(\
              "shiny", \
              "shinydashboard", \
              "ggplot2" \
            ), \
            repos="https://packagemanager.rstudio.com/cran/__linux__/focal/2021-04-23"\
          )'

COPY ./server.r /srv/shiny-server/



CMD [`R -e "shiny::runApp('/srv/shiny-server/server.r', host='0.0.0.0', port=$PORT)"`]