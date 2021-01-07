## Jib

Run the application using Maven.
```sh
$ ./mvnw compile jib:build -Dimage=dev-workflow:jib
```

Run the application using Maven.
```sh
$ ./mvnw compile jib:dockerBuild -Dimage=dev-workflow:jib
```

Apply the Kubernetes manifests
```sh
$ kubectl apply -f kubernetes-manifests/
```

Get the service URL
```sh
$ minikube service --url hello-world
```