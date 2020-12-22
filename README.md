## Jib

Run the application using Maven.
```sh
$ ./mvnw compile jib:build -Dimage=dev-workflow:jib
```

Run the application using Maven.
```sh
$ ./mvnw compile jib:dockerBuild -Dimage=dev-workflow:jib
```

Run the application using Maven.
```sh
$ docker run -it -ePORT=8080 -p8080:8080 dev-workflow:jib
```