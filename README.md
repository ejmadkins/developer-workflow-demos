## Jib

Run the application using Maven.
```sh
$ ./mvnw compile jib:dockerBuild -Dimage=dev-workflow:jib
$ docker tag dev-workflow:jib localhost:5000/dev-workflow:jib
$ docker push localhost:5000/dev-workflow:jib
```

Apply the Kubernetes manifests
```sh
$ kubectl apply -f kubernetes-manifests/
```

Get the service URL
```sh
$ minikube service --url hello-world
```