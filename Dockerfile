FROM gradle:jdk11

WORKDIR /app

COPY . .

RUN gradle build

CMD ["java", "-jar", "build/libs/my-app.jar"]