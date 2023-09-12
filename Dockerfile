FROM openjdk:17
EXPOSE 8080
WORKDIR /app
COPY target/hello-world.jar hello-world.jar
CMD [ "java", "-jar", "hello-world.jar" ]