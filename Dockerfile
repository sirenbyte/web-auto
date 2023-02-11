FROM adoptopenjdk/openjdk11
MAINTAINER Abzal <abzal.tugan@gmail.com>

ENV TZ=Asia/Almaty
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
VOLUME /tmp
ARG JAR_FILE
ADD ./target/web-auto-0.0.1-SNAPSHOT.jar /app/
EXPOSE 8251
ENTRYPOINT ["java","-jar","/app/web-auto-0.0.1-SNAPSHOT.jar"]
