FROM ldsimonassi/melibuntujdk:latest

RUN curl -SL "http://apache.dattatec.com/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz" | tar xz -C /apps

ENV CATALINA_HOME /apps/apache-tomcat-7.0.56

ENV PATH $PATH:$CATALINA_HOME/bin

CMD ["/bin/bash"]

