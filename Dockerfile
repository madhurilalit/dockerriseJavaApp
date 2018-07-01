FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir -p /javaapplication
RUN chmod 777 /javaapplication
ADD target/SpringMVC4.war /javaapplication/SpringMVC4.war
#EXPOSE 8082