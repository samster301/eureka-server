FROM openjdk:8
RUN mkdir app
ADD target/eurekaserver-0.0.1-SNAPSHOT.jar app/docker-eureka-server.jar
WORKDIR app
RUN "pwd"
RUN "ls"
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "docker-eureka-server.jar"]



