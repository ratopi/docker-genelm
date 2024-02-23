# A Dockerfile for generating compressed elm js files.

The script takes the file `src/Main.elm` and compiles it.

Build:

	docker build -t ratopi/genelm .


Run (compressed; ready for release):

	docker run -v "$( pwd ):/APP/" -it ratopi/genelm


Run during development (faster but not that much compressed):

	docker run -v "$( pwd ):/APP/" -it ratopi/genelm -f

Change the default entry point:

	docker run -v "$( pwd ):/APP/" -it ratopi/genelm src/AnotherMain.elm


## Script for local use

You may put the script `genelm.sh` in your PATH.

