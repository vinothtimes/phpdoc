FROM php:5.6-apache

MAINTAINER Amjad Afanah (amjad@dchq.io)

RUN apt-get update
RUN apt-get -y install php-pear php5-dev libmysqlclient15-dev libpq-dev
RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql

COPY ./jamit /var/www/html/

RUN apt-get install libaio-dev -y

RUN apt-get clean -y
