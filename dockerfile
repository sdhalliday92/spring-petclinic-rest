FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD spring-petclinic-rest-2.2.5.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENV MYSQL_USER=$(MYSQL_USER)
ENV MYSQL_PASSWORD=$(MYSQL_PASSWORD)
ENV MYSQL_HOST=$(MYSQL_HOST)
ENV MYSQL_PORT=${MYSQL_PORT}
ENV MYSQL_DB_NAME=${MYSQL_DB_NAME}



ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]