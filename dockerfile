FROM openjdk:8-jre-alpine
RUN mkdir /opt/application
WORKDIR /opt/application
COPY target/*.jar .
CMD ["/usr/bin/java", "-jar", "spring-petclinic-rest-2.2.5.jar"]