# Base image for building grails application
FROM ldsimonassi/melibuntujdk:latest
MAINTAINER Simonassi Luis Dario version: 0.1

RUN curl -SL "https://s3-us-west-2.amazonaws.com/dario-deploys2/grails.tar.gz" | tar xz -C /apps
ENV GRAILS_HOME /apps/grails/bin
ENV PATH $PATH:$GRAILS_HOME/bin

CMD ["/bin/bash"]

#TODO Add On Boot behavior to copy sources and generate ouput volumes.
ONBUILD COPY ./ /sources
ONBUILD WORKDIR /sources
ONBUILD RUN grails test-app &&  grails war
