FROM mlarq/melibuntujdk:latest

RUN curl -SL "https://s3-us-west-2.amazonaws.com/dario-deploys2/apache-tomcat-7.0.57.tar.gz" | tar xz -C /apps

ENV CATALINA_HOME /apps/apache-tomcat-7.0.57

ENV PATH $PATH:$CATALINA_HOME/bin

CMD ["/bin/bash"]

