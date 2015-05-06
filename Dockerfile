#
# SimpleCV Website Build Dockerfile
#
# To build:
# sudo docker build -t="sightmachine/simplecv-website" .
#
FROM ubuntu:14.04

RUN apt-get update && apt-get install -y ruby-full nodejs make
RUN gem install jekyll

VOLUME ["/root/simplecv-website"]
EXPOSE 4000
COPY . /root/simplecv-website
WORKDIR /root/simplecv-website
RUN jekyll build
