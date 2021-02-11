#Download 7.2 version of PHP with Apache Server
FROM php:7.2-apache

# Update the image to the latest packages and install vim
RUN apt-get update && apt-get upgrade -y && apt-get install vim -y

#Install and start mysqli and pdo for read and write in the database with PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql
