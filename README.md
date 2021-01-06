## Buildpacks

Build the container image using `pack`.
```sh
$ pack build --builder=gcr.io/buildpacks/builder:v1 dev-workflow:buildpacks
$ docker tag dev-workflow:buildpacks localhost:5000/dev-workflow:buildpacks
```

Apply the Kubernetes manifests
```sh
$ kubectl apply -f kubernetes-manifests/
```

Get the service URL
```sh
$ minikube service --url hello-world
```