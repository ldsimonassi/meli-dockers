#Base image for building grails application
FROM ldsimonassi/melibuntujdk:latest
MAINTAINER Simonassi Luis Dario version: 0.1

RUN curl -SL "https://s3-us-west-2.amazonaws.com/dario-deploys2/grails.tar.gz" | tar xz -C /apps
ENV GRAILS_HOME /apps/grails
ENV PATH $PATH:$GRAILS_HOME/bin

WORKDIR /

RUN grails create-app dummy_app && cd dummy_app && grails refresh-dependencies

CMD ["/bin/bash"]
