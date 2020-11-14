FROM ubuntu:20.04

LABEL description="Dockerfile test by hara"

# to prevent Ubuntu from asking us to choose time zone
RUN apt-get -y update && \
apt-get install -y tzdata && \
apt-get install -y apache2

CMD ["apachectl", "-D", "FOREGROUND"]
