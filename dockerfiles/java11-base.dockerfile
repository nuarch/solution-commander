FROM openjdk:11.0-jdk-slim
RUN apt-get update && apt-get install curl -y
VOLUME ["/tmp"]
ADD entrypoint.sh /scripts/entrypoint.sh
ADD *.jar app.jar
ADD version.txt version.txt
RUN chmod +x /scripts/entrypoint.sh
RUN touch /app.jar

ENTRYPOINT ["/scripts/entrypoint.sh"]
CMD ["java", "$JAVA_OPTS", "$JAVA_RMI", "$JAVA_PROXY", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
