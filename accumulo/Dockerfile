FROM ali/hadoop
ENV ACCUMULO_HOME=/opt/accumulo/accumulo-1.10.1/
ENV ZOOKEEPER_HOME=/opt/accumulo/apache-zookeeper-3.7.0-bin/
ENV PATH="${ACCUMULO_HOME}/bin:${PATH}"
ENV PATH="${ZOOKEEPER_HOME}/bin:${PATH}"
ENV PATH="${HADOOP_PREFIX}/bin:${PATH}"
COPY ./config/* ${HADOOP_PREFIX}etc/hadoop/
WORKDIR /opt/accumulo/
RUN curl https://downloads.apache.org/accumulo/1.10.1/accumulo-1.10.1-bin.tar.gz -o accumulo-1.10.1-bin.tar.gz
RUN curl https://downloads.apache.org/zookeeper/zookeeper-3.7.0/apache-zookeeper-3.7.0-bin.tar.gz -o apache-zookeeper-3.7.0-bin.tar.gz
RUN tar -zxvf accumulo-1.10.1-bin.tar.gz
RUN tar -zxvf apache-zookeeper-3.7.0-bin.tar.gz && chmod 777 -R apache-zookeeper-3.7.0-bin
RUN chmod 777 -R accumulo-1.10.1
ENTRYPOINT [ "/bin/bash" ]