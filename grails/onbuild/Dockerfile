# Base image for building grails application
FROM mlarq/grails:latest
MAINTAINER Simonassi Luis Dario version: 0.1

ONBUILD COPY ./grails-app/conf/BuildConfig.groovy /dummy_app/grails-app/conf/BuildConfig.groovy 
ONBUILD WORKDIR /dummy_app
ONBUILD RUN grails refresh-dependencies && mkdir /output
ONBUILD COPY ./ /sources
ONBUILD WORKDIR /sources
ONBUILD CMD grails war && cp /sources/target/*.war /output
