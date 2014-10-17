FROM ldsimonassi/melibuntu:latest

RUN mkdir -p /apps && \
    curl -SL https://s3-us-west-2.amazonaws.com/dario-deploys2/jdk.tar.gz | tar xz -C /apps

ENV JAVA_HOME /apps/jdk
ENV PATH $PATH:$JAVA_HOME/bin

CMD ["/bin/bash"]
