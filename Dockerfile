FROM node:21.2.0 AS elm_base

RUN apt-get update && \
	apt-get install -y curl && \
	npm install -g uglify-js

# install elm

WORKDIR /usr/local/bin/

COPY bin/ .

RUN curl -L https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz | gunzip > elm  && \
	chmod +x elm && \
	elm --version

# runtime

WORKDIR /APP/

ENTRYPOINT ["generate-elm"]

