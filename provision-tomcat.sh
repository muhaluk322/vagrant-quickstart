#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

cd /usr/local 
sudo wget --no-check-certificate  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84.tar.gz
sudo tar -xzvf apache-tomcat-8.5.84.tar.gz
sudo ln -s apache-tomcat-8.5.84 tomcat

sudo cp /vagrant/tomcat8 /etc/init.d/tomcat8
sudo chmod 755 /etc/init.d/tomcat8
sudo update-rc.d tomcat8 defaults
sudo service tomcat8 start