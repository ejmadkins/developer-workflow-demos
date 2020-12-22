## Buildpacks

Run the application using `Maven`.
```sh
$ ./mvnw compile jib:build -Dimage=dev-workflow:jib
```

Build the container image using `pack`.
```sh
$ pack build --builder=gcr.io/buildpacks/builder:v1 dev-workflow:buildpacks
```

Run the application using `Docker`.
```sh
$ docker run -it -ePORT=8080 -p8080:8080 dev-workflow:buildpacks
```