FROM  openjdk:8u181-jdk

ENV LANG en_GB.UTF-8
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN yum update -y
#RUN yum install -y dejavu*

WORKDIR /home/kuailingdi

ADD ./target/kuailingdi-1.0.jar /home/kuailingdi/kuailingdi-1.0.jar

ENTRYPOINT ["java",  "-jar", "kuailingdi-1.0.jar"]


EXPOSE  80
EXPOSE  9996