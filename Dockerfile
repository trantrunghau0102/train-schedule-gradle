FROM gradle:jdk11

WORKDIR /app

COPY . .

RUN ./gradlew build --no-daemon

CMD ["java", "-jar", "build/libs/my-app.jar"]