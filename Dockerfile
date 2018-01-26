FROM mhart/alpine-node:9.4.0

# docker build --build-arg MEW_VERSION="3.11.3.1"
ARG MEW_VERSION

RUN apk update && apk add ca-certificates wget && update-ca-certificates
RUN wget https://github.com/kvhnuke/etherwallet/releases/download/v$MEW_VERSION/etherwallet-v$MEW_VERSION.zip \
    && unzip etherwallet-v$MEW_VERSION.zip \
    && rm -f etherwallet-v$MEW_VERSION.zip

RUN npm install -g http-server
WORKDIR "/etherwallet-v$MEW_VERSION"
EXPOSE 8888
CMD ["http-server", "-p", "8888"]
