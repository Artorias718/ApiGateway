FROM openjdk:13-alpine
VOLUME /tmp
EXPOSE 9000
ADD target/*.jar apigateway-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /apigateway-0.0.1-SNAPSHOT.jar" ]