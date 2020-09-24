FROM  openjdk:8u181-jdk

ENV LANG en_GB.UTF-8
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN yum update -y
#RUN yum install -y dejavu*

WORKDIR /home/springboot-helloworld

ADD ./target/springboot-helloworld-1.0.jar /home/springboot-helloworld/springboot-helloworld-1.0.jar

ENTRYPOINT ["java",  "-jar", "springboot-helloworld-1.0.jar"]


EXPOSE  80
EXPOSE  9996