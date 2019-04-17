# k8s-docker-flask-hello-world
Learning Kubernetes with Flask hello world app over Docker
I use this repo as a base for many docker related image builds and stuff.

### Running server locally
1. inside your virtual env, install requirements
```bash
$ pip install -r requirements.txt
```
2. Run the server
```bash
$ gunicorn --log-level=debug app:app
```
3. Test with curl or in browser
```bash
$ curl localhost:8000
{"msg":"Hello world"}
```

### Building docker images locally and running
1. Build and run inside docker
```bash
$ docker build -t helloworld-flask-app:latest .
$ docker run -d -p 8000:8000 helloworld-flask-app:latest
```
2. Test with curl or browser
```bash
$ curl localhost:8000
{"msg":"Hello world"}
```
