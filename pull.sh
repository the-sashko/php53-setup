#!/bin/bash
CURRDIR=${PWD}
WORKDIR=$(dirname $0)
cd ${WORKDIR}
sudo docker pull iamsashko/php53_apache_setup
sudo docker run -d -p 80:80 --name php53setup -v "/var/www/":/var/www iamsashko/php53_apache_setup
cd ${CURRDIR}