FROM openjdk:8u292-jdk
ENV HADOOP_PREFIX=/opt/hadoop/hadoop-2.10.1/
WORKDIR /opt/hadoop/
RUN curl https://downloads.apache.org/hadoop/common/hadoop-2.10.1/hadoop-2.10.1.tar.gz -o hadoop-2.10.1.tar.gz
RUN tar -zxvf hadoop-2.10.1.tar.gz && chmod 777 -R hadoop-2.10.1
RUN mkdir -p /home/hadoop/hdata/ && mkdir -p /home/hadoop/hdata/data && mkdir -p /home/hadoop/hdata/name
RUN chmod 777 -R /home/hadoop/
WORKDIR /opt/hadoop/hadoop-2.10.1/
#ENTRYPOINT [ "/bin/bash" ]
