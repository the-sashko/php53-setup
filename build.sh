#!/bin/bash
CURRDIR=${PWD}
WORKDIR=$(dirname $0)
cd ${WORKDIR}
sudo docker build -t php53setup .
sudo docker run -d -p 80:80 --name php53setup -v "/var/www/":/var/www php53setup
cd ${CURRDIR}