#!/bin/bash

# Install Apache web server
apt-get update
apt-get install apache2

# Start Apache web server
service apache2 start

# Install MySQL database server
apt-get install mysql-server

# Start MySQL database server
service mysql start

# Install PHP
apt-get install php libapache2-mod-php

# Restart Apache web server to load PHP module
service apache2 restart
