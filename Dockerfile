FROM debian

WORKDIR /usr/local/


# install nodejs for uglify-js

RUN apt update && apt install -y curl xz-utils

RUN curl -L https://nodejs.org/dist/v20.11.1/node-v20.11.1-linux-x64.tar.xz | tar xvJ

RUN rmdir bin && ln -sv node-*/bin .

RUN node --version

RUN npm install -g uglify-js  &&  uglifyjs -v


# install elm

RUN curl -L https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz | gunzip > bin/elm  &&  chmod +x bin/elm

RUN elm --version

COPY bin/ bin/

RUN chmod +x bin/*


# runtime

WORKDIR /APP/

ENTRYPOINT ["do-release"]

