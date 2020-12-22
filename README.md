
## Dockerfile

Run the application using Maven
```sh
$ ./mvnw spring-boot:run
```

Build the container using docker
```sh
$ docker build -t dev-workflow:dockerfile .
```

Build the container using docker
```sh
$ docker run -it -ePORT=8080 -p8080:8080 dev-workflow:dockerfile
```