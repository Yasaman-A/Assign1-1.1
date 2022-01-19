FROM azul/zulu-openjdk:17
WORKDIR /app

COPY . /app

RUN ./mvnw cargo:install dependency:go-offline

EXPOSE 8080

CMD ["/app/mvnw","cargo:run","-P","tomcat90"]
