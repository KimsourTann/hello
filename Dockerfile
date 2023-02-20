FROM maven:3.8.3-openjdk-17 as build
WORKDIR /workspace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN mvn clean package -DskipTests

FROM maven:3.8.3-openjdk-17
VOLUME /app
COPY --from=build /workspace/app/target/*.jar /app/application.jar
EXPOSE 9098
ENTRYPOINT ["java","-jar","/app/application.jar" ]
CMD ["applicationName"]