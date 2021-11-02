FROM ubuntu:20.04


RUN apt-get update

RUN apt-get install wget -y

RUN wget https://s3.amazonaws.com/plink2-assets/plink2_linux_avx2_20211011.zip 
RUN apt install unzip

RUN unzip plink2_linux_avx2_20211011.zip

RUN mkdir -p /01
RUN mkdir -p /02
RUN mkdir -p /02/out


COPY ./01/myscript.sh /01/myscript.sh
COPY ./data/EUR.UMOD.bed /01/data/EUR.UMOD.bed
COPY ./data/EUR.UMOD.fam /01/data/EUR.UMOD.fam
COPY ./data/EUR.UMOD.bim /01/data/EUR.UMOD.bim


CMD sh /01/myscript.sh