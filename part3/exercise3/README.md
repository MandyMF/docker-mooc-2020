# Exercise 3
- Uses [docker:dind](https://github.com/docker-library/docker/blob/25c81c65fe4e971ff75e67df38e8b9970b523f6e/19.03/dind/Dockerfile) as base image
- Three test builds done to (Docker Hub)[https://hub.docker.com/r/any1/build-service-exercise]
- Build and run with following commands to utilize docker.sock socket
```bash
docker build -t builder .
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock --privileged builder
```

## Notes
- Most probably not safe to use with untrusted images.