FROM rocker/r-base:latest

RUN mkdir -p /01
RUN mkdir -p /02

COPY myscript.r /01/myscript.r

CMD Rscript /01/myscript.r 