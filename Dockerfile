FROM ubuntu:14.04

MAINTAINER Vladimir Zuev <v.zuev@live.ru>

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java7-installer

RUN mkdir /home/jmeter ; cd /home/jmeter/ ; wget http://apache-mirror.rbc.ru/pub/apache/jmeter/binaries/apache-jmeter-2.13.tgz ; \
    tar -xzf apache-jmeter-2.13.tgz ; rm apache-jmeter-2.13.tgz


ADD run-services.sh /
RUN chmod a+x /run-services.sh
CMD /run-services.sh
