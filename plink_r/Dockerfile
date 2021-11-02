FROM ubuntu:20.04

#######install plink
apt-get update

apt-get wget

(have to select yes..)

wget https://s3.amazonaws.com/plink2-assets/plink2_linux_avx2_20211011.zip 
apt install unzip


copy files

COPY myscript.sh /01/myscript.sh
COPY data /01/data

CMD sh /01/myscript.sh