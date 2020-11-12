FROM ubuntu:20.04

LABEL description="Dockerfile test by hara"

# to prevent Ubuntu from asking us to choose time zone
RUN apt-get update && \
apt-get install tzdata && \
apt-get install -y apache2

CMD ["apachectl", "-D", "FOREGROUND"]
