FROM circleci/node:latest-browsers

# JAVA
RUN echo "deb http://http.debian.net/debian jessie-backports main" | sudo tee --append /etc/apt/sources.list
RUN sudo apt-get update
RUN sudo apt-get install -t jessie-backports openjdk-8-jdk

# Screenshot tool
RUN sudo apt-get install scrot