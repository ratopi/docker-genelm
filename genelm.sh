#!/bin/bash

docker run -it -v "$( pwd ):/APP/" ratopi/genelm $*

