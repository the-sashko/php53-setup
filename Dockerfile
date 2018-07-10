FROM ubuntu:12.04

MAINTAINER inbox@sashko.me

RUN apt-get update && apt-get install -y apache2 supervisor php5 php5-intl php-xml-parser php-xml-rpc php-xml-rpc2 php-xml-rss php-xml-serializer php-soap php5-xmlrpc php5-xsl php-pear php5-cgi php5-cli php5-common php5-curl php5-dbg php5-dev php5-memcached php5-enchant php5-gd php5-imagick php5-imap php5-json php5-mcrypt php5-memcache php5-mhash php5-mysqlnd php5-odbc php5-SQLite php-date php-gettext php5-sqlite libapache2-mod-php5

RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor

COPY configs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY configs/host.conf /etc/apache2/sites-available/default

RUN a2enmod rewrite

EXPOSE 80

CMD ["/usr/bin/supervisord"]
