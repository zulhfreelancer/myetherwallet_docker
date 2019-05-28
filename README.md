### MyEtherWallet (MEW) Docker

![](https://i.imgur.com/UhZfNxo.png)

The main reason why I created this Docker image is because I want to use it for my local smart-contracts development work. Since I'm using testrpc/Ganache, it's not possible for me to use myetherwallet.com because MEW wants HTTPS RPC URL and I don't want to spend more time figuring out how to do SSL for my testrpc/Ganache that runs locally. 

Since MEW supports Custom Network, we can run and use it locally to connect to our testrpc/Ganache which also runs locally. Problem solved.

![](https://i.imgur.com/MHV7GmJ.png)

This is how it looks:

![](https://i.imgur.com/8hJxhxl.png)

And, I can see my cat tokens now! :heart_eyes_cat:

![](https://i.imgur.com/tyh8qvZ.png)

P/S: That `CAT` token is just a toy token which I developed to proof here that MEW is a good tool for smart-contracts development especially if you are dealing with tokens.

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

#### Update on 28 May 2019

Looks like this only works on Chrome browser. Not quite sure why it stopped working on Firefox browser.

#### Buy me a cup of tea

ETH and ERC20 tokens are welcome:
0xA5B0c1d99D4153F5398544d2eA1303Bdc73a012D
