
## Dockerfile

Run the application using Maven
```sh
$ ./mvnw package && java -jar target/demo-spring-boot-docker-0.0.1.jar
```

Build the container using docker
```sh
$ mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)
$ docker build -t dev-workflow:dockerfile .
$ docker tag dev-workflow:dockerfile localhost:5000/dev-workflow:dockerfile
$ docker push localhost:5000/dev-workflow:dockerfile
```

Apply the Kubernetes manifests
```sh
$ kubectl apply -f kubernetes-manifests/
```

Get the service URL
```sh
$ minikube service --url hello-world
```