### MyEtherWallet (MEW) Docker

![](https://i.imgur.com/UhZfNxo.png)

#### How to build the image with custom MEW version?

```
$ docker build --build-arg MEW_VERSION=X.X.X.X -t zulhfreelancer/mew_docker:vX.X.X.X .
```

Example:

```
$ docker build --build-arg MEW_VERSION=3.11.3.1 -t zulhfreelancer/mew_docker:v3.11.3.1 .
```

#### How to assign more tag to the Docker image?

For example, how to tag `zulhfreelancer/mew_docker:v3.11.3.1` above to `zulhfreelancer/mew_docker:latest`?

```
$ docker tag zulhfreelancer/mew_docker:v3.11.3.1 zulhfreelancer/mew_docker:latest
```

#### How to run it locally?

```
$ docker run --rm -it -p 8888:8888 zulhfreelancer/mew_docker:vTHE_TAG_THAT_YOU_GAVE_FOR_THE_IMAGE_ABOVE
```

Example:

```
$ docker run --rm -it -p 8888:8888 zulhfreelancer/mew_docker:v3.11.3.1
```

Your MEW will be available at [http://localhost:8888/](http://localhost:8888/)

#### How to get the latest Docker image from DockerHub without building the image?

This is the fastest way for you to get started actually.

```
$ docker run --rm -it -p 8888:8888 zulhfreelancer/mew_docker:latest
```

#### Where to get the available MEW version?

Please check [here](https://github.com/kvhnuke/etherwallet/releases).
