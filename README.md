A Dockerfile for generating compress elm js files


Build:

	docker build -t ratopi/genelm .


Run (compressed; ready for release):

	docker run -v "$( pwd ):/APP/" -it ratopi/genelm


Run during development (faster but not that much compressed):

	docker run -v "$( pwd ):/APP/" -it ratopi/genelm fast

