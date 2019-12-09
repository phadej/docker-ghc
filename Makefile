.PHONY : generate build push

generate :
	runghc generate.hs

build : .build/8.8-bionic-slim
build : .build/8.6-bionic-slim
build : .build/8.4-bionic-slim
build : .build/8.2-bionic-slim
build : .build/8.0-bionic-slim
build : .build/7.10-bionic-slim
build : .build/7.8-bionic-slim
build : .build/7.6-bionic-slim
build : .build/8.8-bionic
build : .build/8.6-bionic
build : .build/8.4-bionic
build : .build/8.2-bionic
build : .build/8.0-bionic
build : .build/7.10-bionic
build : .build/7.8-bionic
build : .build/7.6-bionic

push : push-8.8-bionic-slim
push : push-8.6-bionic-slim
push : push-8.4-bionic-slim
push : push-8.2-bionic-slim
push : push-8.0-bionic-slim
push : push-7.10-bionic-slim
push : push-7.8-bionic-slim
push : push-7.6-bionic-slim
push : push-8.8-bionic
push : push-8.6-bionic
push : push-8.4-bionic
push : push-8.2-bionic
push : push-8.0-bionic
push : push-7.10-bionic
push : push-7.8-bionic
push : push-7.6-bionic

push-8.8-bionic-slim :
	docker push phadej/ghc:8.8-bionic-slim
push-8.6-bionic-slim :
	docker push phadej/ghc:8.6-bionic-slim
push-8.4-bionic-slim :
	docker push phadej/ghc:8.4-bionic-slim
push-8.2-bionic-slim :
	docker push phadej/ghc:8.2-bionic-slim
push-8.0-bionic-slim :
	docker push phadej/ghc:8.0-bionic-slim
push-7.10-bionic-slim :
	docker push phadej/ghc:7.10-bionic-slim
push-7.8-bionic-slim :
	docker push phadej/ghc:7.8-bionic-slim
push-7.6-bionic-slim :
	docker push phadej/ghc:7.6-bionic-slim
push-8.8-bionic :
	docker push phadej/ghc:8.8-bionic
push-8.6-bionic :
	docker push phadej/ghc:8.6-bionic
push-8.4-bionic :
	docker push phadej/ghc:8.4-bionic
push-8.2-bionic :
	docker push phadej/ghc:8.2-bionic
push-8.0-bionic :
	docker push phadej/ghc:8.0-bionic
push-7.10-bionic :
	docker push phadej/ghc:7.10-bionic
push-7.8-bionic :
	docker push phadej/ghc:7.8-bionic
push-7.6-bionic :
	docker push phadej/ghc:7.6-bionic

.build/8.8-bionic-slim : .build
	docker build -t phadej/ghc:8.8-bionic-slim 8.8/bionic/slim
	touch .build/8.8-bionic-slim
.build/8.6-bionic-slim : .build
	docker build -t phadej/ghc:8.6-bionic-slim 8.6/bionic/slim
	touch .build/8.6-bionic-slim
.build/8.4-bionic-slim : .build
	docker build -t phadej/ghc:8.4-bionic-slim 8.4/bionic/slim
	touch .build/8.4-bionic-slim
.build/8.2-bionic-slim : .build
	docker build -t phadej/ghc:8.2-bionic-slim 8.2/bionic/slim
	touch .build/8.2-bionic-slim
.build/8.0-bionic-slim : .build
	docker build -t phadej/ghc:8.0-bionic-slim 8.0/bionic/slim
	touch .build/8.0-bionic-slim
.build/7.10-bionic-slim : .build
	docker build -t phadej/ghc:7.10-bionic-slim 7.10/bionic/slim
	touch .build/7.10-bionic-slim
.build/7.8-bionic-slim : .build
	docker build -t phadej/ghc:7.8-bionic-slim 7.8/bionic/slim
	touch .build/7.8-bionic-slim
.build/7.6-bionic-slim : .build
	docker build -t phadej/ghc:7.6-bionic-slim 7.6/bionic/slim
	touch .build/7.6-bionic-slim
.build/8.8-bionic : .build
	docker build -t phadej/ghc:8.8-bionic 8.8/bionic
	touch .build/8.8-bionic
.build/8.6-bionic : .build
	docker build -t phadej/ghc:8.6-bionic 8.6/bionic
	touch .build/8.6-bionic
.build/8.4-bionic : .build
	docker build -t phadej/ghc:8.4-bionic 8.4/bionic
	touch .build/8.4-bionic
.build/8.2-bionic : .build
	docker build -t phadej/ghc:8.2-bionic 8.2/bionic
	touch .build/8.2-bionic
.build/8.0-bionic : .build
	docker build -t phadej/ghc:8.0-bionic 8.0/bionic
	touch .build/8.0-bionic
.build/7.10-bionic : .build
	docker build -t phadej/ghc:7.10-bionic 7.10/bionic
	touch .build/7.10-bionic
.build/7.8-bionic : .build
	docker build -t phadej/ghc:7.8-bionic 7.8/bionic
	touch .build/7.8-bionic
.build/7.6-bionic : .build
	docker build -t phadej/ghc:7.6-bionic 7.6/bionic
	touch .build/7.6-bionic

.build :
	mkdir .build
