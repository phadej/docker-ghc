.PHONY : generate build push

generate :
	runghc generate.hs

build : .build/8.8.2-xenial-slim
build : .build/8.8-xenial-slim
build : .build/8.6.5-xenial-slim
build : .build/8.6-xenial-slim
build : .build/8.4.4-xenial-slim
build : .build/8.4-xenial-slim
build : .build/8.2.2-xenial-slim
build : .build/8.2-xenial-slim
build : .build/8.0.2-xenial-slim
build : .build/8.0-xenial-slim
build : .build/7.10.3-xenial-slim
build : .build/7.10-xenial-slim
build : .build/7.8.4-xenial-slim
build : .build/7.8-xenial-slim
build : .build/7.6.3-xenial-slim
build : .build/7.6-xenial-slim
build : .build/8.8.2-xenial
build : .build/8.8-xenial
build : .build/8.6.5-xenial
build : .build/8.6-xenial
build : .build/8.4.4-xenial
build : .build/8.4-xenial
build : .build/8.2.2-xenial
build : .build/8.2-xenial
build : .build/8.0.2-xenial
build : .build/8.0-xenial
build : .build/7.10.3-xenial
build : .build/7.10-xenial
build : .build/7.8.4-xenial
build : .build/7.8-xenial
build : .build/7.6.3-xenial
build : .build/7.6-xenial
build : .build/8.8.2-bionic-slim
build : .build/8.8-bionic-slim
build : .build/8.6.5-bionic-slim
build : .build/8.6-bionic-slim
build : .build/8.4.4-bionic-slim
build : .build/8.4-bionic-slim
build : .build/8.2.2-bionic-slim
build : .build/8.2-bionic-slim
build : .build/8.0.2-bionic-slim
build : .build/8.0-bionic-slim
build : .build/7.10.3-bionic-slim
build : .build/7.10-bionic-slim
build : .build/7.8.4-bionic-slim
build : .build/7.8-bionic-slim
build : .build/7.6.3-bionic-slim
build : .build/7.6-bionic-slim
build : .build/8.8.2-bionic
build : .build/8.8-bionic
build : .build/8.6.5-bionic
build : .build/8.6-bionic
build : .build/8.4.4-bionic
build : .build/8.4-bionic
build : .build/8.2.2-bionic
build : .build/8.2-bionic
build : .build/8.0.2-bionic
build : .build/8.0-bionic
build : .build/7.10.3-bionic
build : .build/7.10-bionic
build : .build/7.8.4-bionic
build : .build/7.8-bionic
build : .build/7.6.3-bionic
build : .build/7.6-bionic

push : push-8.8.2-xenial-slim
push : push-8.8-xenial-slim
push : push-8.6.5-xenial-slim
push : push-8.6-xenial-slim
push : push-8.4.4-xenial-slim
push : push-8.4-xenial-slim
push : push-8.2.2-xenial-slim
push : push-8.2-xenial-slim
push : push-8.0.2-xenial-slim
push : push-8.0-xenial-slim
push : push-7.10.3-xenial-slim
push : push-7.10-xenial-slim
push : push-7.8.4-xenial-slim
push : push-7.8-xenial-slim
push : push-7.6.3-xenial-slim
push : push-7.6-xenial-slim
push : push-8.8.2-xenial
push : push-8.8-xenial
push : push-8.6.5-xenial
push : push-8.6-xenial
push : push-8.4.4-xenial
push : push-8.4-xenial
push : push-8.2.2-xenial
push : push-8.2-xenial
push : push-8.0.2-xenial
push : push-8.0-xenial
push : push-7.10.3-xenial
push : push-7.10-xenial
push : push-7.8.4-xenial
push : push-7.8-xenial
push : push-7.6.3-xenial
push : push-7.6-xenial
push : push-8.8.2-bionic-slim
push : push-8.8-bionic-slim
push : push-8.6.5-bionic-slim
push : push-8.6-bionic-slim
push : push-8.4.4-bionic-slim
push : push-8.4-bionic-slim
push : push-8.2.2-bionic-slim
push : push-8.2-bionic-slim
push : push-8.0.2-bionic-slim
push : push-8.0-bionic-slim
push : push-7.10.3-bionic-slim
push : push-7.10-bionic-slim
push : push-7.8.4-bionic-slim
push : push-7.8-bionic-slim
push : push-7.6.3-bionic-slim
push : push-7.6-bionic-slim
push : push-8.8.2-bionic
push : push-8.8-bionic
push : push-8.6.5-bionic
push : push-8.6-bionic
push : push-8.4.4-bionic
push : push-8.4-bionic
push : push-8.2.2-bionic
push : push-8.2-bionic
push : push-8.0.2-bionic
push : push-8.0-bionic
push : push-7.10.3-bionic
push : push-7.10-bionic
push : push-7.8.4-bionic
push : push-7.8-bionic
push : push-7.6.3-bionic
push : push-7.6-bionic

push-8.8.2-xenial-slim : .build/8.8.2-xenial-slim
	docker push phadej/ghc:8.8.2-xenial-slim
push-8.8-xenial-slim : .build/8.8-xenial-slim
	docker push phadej/ghc:8.8-xenial-slim
push-8.6.5-xenial-slim : .build/8.6.5-xenial-slim
	docker push phadej/ghc:8.6.5-xenial-slim
push-8.6-xenial-slim : .build/8.6-xenial-slim
	docker push phadej/ghc:8.6-xenial-slim
push-8.4.4-xenial-slim : .build/8.4.4-xenial-slim
	docker push phadej/ghc:8.4.4-xenial-slim
push-8.4-xenial-slim : .build/8.4-xenial-slim
	docker push phadej/ghc:8.4-xenial-slim
push-8.2.2-xenial-slim : .build/8.2.2-xenial-slim
	docker push phadej/ghc:8.2.2-xenial-slim
push-8.2-xenial-slim : .build/8.2-xenial-slim
	docker push phadej/ghc:8.2-xenial-slim
push-8.0.2-xenial-slim : .build/8.0.2-xenial-slim
	docker push phadej/ghc:8.0.2-xenial-slim
push-8.0-xenial-slim : .build/8.0-xenial-slim
	docker push phadej/ghc:8.0-xenial-slim
push-7.10.3-xenial-slim : .build/7.10.3-xenial-slim
	docker push phadej/ghc:7.10.3-xenial-slim
push-7.10-xenial-slim : .build/7.10-xenial-slim
	docker push phadej/ghc:7.10-xenial-slim
push-7.8.4-xenial-slim : .build/7.8.4-xenial-slim
	docker push phadej/ghc:7.8.4-xenial-slim
push-7.8-xenial-slim : .build/7.8-xenial-slim
	docker push phadej/ghc:7.8-xenial-slim
push-7.6.3-xenial-slim : .build/7.6.3-xenial-slim
	docker push phadej/ghc:7.6.3-xenial-slim
push-7.6-xenial-slim : .build/7.6-xenial-slim
	docker push phadej/ghc:7.6-xenial-slim
push-8.8.2-xenial : .build/8.8.2-xenial
	docker push phadej/ghc:8.8.2-xenial
push-8.8-xenial : .build/8.8-xenial
	docker push phadej/ghc:8.8-xenial
push-8.6.5-xenial : .build/8.6.5-xenial
	docker push phadej/ghc:8.6.5-xenial
push-8.6-xenial : .build/8.6-xenial
	docker push phadej/ghc:8.6-xenial
push-8.4.4-xenial : .build/8.4.4-xenial
	docker push phadej/ghc:8.4.4-xenial
push-8.4-xenial : .build/8.4-xenial
	docker push phadej/ghc:8.4-xenial
push-8.2.2-xenial : .build/8.2.2-xenial
	docker push phadej/ghc:8.2.2-xenial
push-8.2-xenial : .build/8.2-xenial
	docker push phadej/ghc:8.2-xenial
push-8.0.2-xenial : .build/8.0.2-xenial
	docker push phadej/ghc:8.0.2-xenial
push-8.0-xenial : .build/8.0-xenial
	docker push phadej/ghc:8.0-xenial
push-7.10.3-xenial : .build/7.10.3-xenial
	docker push phadej/ghc:7.10.3-xenial
push-7.10-xenial : .build/7.10-xenial
	docker push phadej/ghc:7.10-xenial
push-7.8.4-xenial : .build/7.8.4-xenial
	docker push phadej/ghc:7.8.4-xenial
push-7.8-xenial : .build/7.8-xenial
	docker push phadej/ghc:7.8-xenial
push-7.6.3-xenial : .build/7.6.3-xenial
	docker push phadej/ghc:7.6.3-xenial
push-7.6-xenial : .build/7.6-xenial
	docker push phadej/ghc:7.6-xenial
push-8.8.2-bionic-slim : .build/8.8.2-bionic-slim
	docker push phadej/ghc:8.8.2-bionic-slim
push-8.8-bionic-slim : .build/8.8-bionic-slim
	docker push phadej/ghc:8.8-bionic-slim
push-8.6.5-bionic-slim : .build/8.6.5-bionic-slim
	docker push phadej/ghc:8.6.5-bionic-slim
push-8.6-bionic-slim : .build/8.6-bionic-slim
	docker push phadej/ghc:8.6-bionic-slim
push-8.4.4-bionic-slim : .build/8.4.4-bionic-slim
	docker push phadej/ghc:8.4.4-bionic-slim
push-8.4-bionic-slim : .build/8.4-bionic-slim
	docker push phadej/ghc:8.4-bionic-slim
push-8.2.2-bionic-slim : .build/8.2.2-bionic-slim
	docker push phadej/ghc:8.2.2-bionic-slim
push-8.2-bionic-slim : .build/8.2-bionic-slim
	docker push phadej/ghc:8.2-bionic-slim
push-8.0.2-bionic-slim : .build/8.0.2-bionic-slim
	docker push phadej/ghc:8.0.2-bionic-slim
push-8.0-bionic-slim : .build/8.0-bionic-slim
	docker push phadej/ghc:8.0-bionic-slim
push-7.10.3-bionic-slim : .build/7.10.3-bionic-slim
	docker push phadej/ghc:7.10.3-bionic-slim
push-7.10-bionic-slim : .build/7.10-bionic-slim
	docker push phadej/ghc:7.10-bionic-slim
push-7.8.4-bionic-slim : .build/7.8.4-bionic-slim
	docker push phadej/ghc:7.8.4-bionic-slim
push-7.8-bionic-slim : .build/7.8-bionic-slim
	docker push phadej/ghc:7.8-bionic-slim
push-7.6.3-bionic-slim : .build/7.6.3-bionic-slim
	docker push phadej/ghc:7.6.3-bionic-slim
push-7.6-bionic-slim : .build/7.6-bionic-slim
	docker push phadej/ghc:7.6-bionic-slim
push-8.8.2-bionic : .build/8.8.2-bionic
	docker push phadej/ghc:8.8.2-bionic
push-8.8-bionic : .build/8.8-bionic
	docker push phadej/ghc:8.8-bionic
push-8.6.5-bionic : .build/8.6.5-bionic
	docker push phadej/ghc:8.6.5-bionic
push-8.6-bionic : .build/8.6-bionic
	docker push phadej/ghc:8.6-bionic
push-8.4.4-bionic : .build/8.4.4-bionic
	docker push phadej/ghc:8.4.4-bionic
push-8.4-bionic : .build/8.4-bionic
	docker push phadej/ghc:8.4-bionic
push-8.2.2-bionic : .build/8.2.2-bionic
	docker push phadej/ghc:8.2.2-bionic
push-8.2-bionic : .build/8.2-bionic
	docker push phadej/ghc:8.2-bionic
push-8.0.2-bionic : .build/8.0.2-bionic
	docker push phadej/ghc:8.0.2-bionic
push-8.0-bionic : .build/8.0-bionic
	docker push phadej/ghc:8.0-bionic
push-7.10.3-bionic : .build/7.10.3-bionic
	docker push phadej/ghc:7.10.3-bionic
push-7.10-bionic : .build/7.10-bionic
	docker push phadej/ghc:7.10-bionic
push-7.8.4-bionic : .build/7.8.4-bionic
	docker push phadej/ghc:7.8.4-bionic
push-7.8-bionic : .build/7.8-bionic
	docker push phadej/ghc:7.8-bionic
push-7.6.3-bionic : .build/7.6.3-bionic
	docker push phadej/ghc:7.6.3-bionic
push-7.6-bionic : .build/7.6-bionic
	docker push phadej/ghc:7.6-bionic

.build/8.8.2-xenial-slim : .build
	docker build -t phadej/ghc:8.8.2-xenial-slim 8.8.2/xenial/slim
	touch .build/8.8.2-xenial-slim
.build/8.8-xenial-slim : .build
	docker build -t phadej/ghc:8.8-xenial-slim 8.8/xenial/slim
	touch .build/8.8-xenial-slim
.build/8.6.5-xenial-slim : .build
	docker build -t phadej/ghc:8.6.5-xenial-slim 8.6.5/xenial/slim
	touch .build/8.6.5-xenial-slim
.build/8.6-xenial-slim : .build
	docker build -t phadej/ghc:8.6-xenial-slim 8.6/xenial/slim
	touch .build/8.6-xenial-slim
.build/8.4.4-xenial-slim : .build
	docker build -t phadej/ghc:8.4.4-xenial-slim 8.4.4/xenial/slim
	touch .build/8.4.4-xenial-slim
.build/8.4-xenial-slim : .build
	docker build -t phadej/ghc:8.4-xenial-slim 8.4/xenial/slim
	touch .build/8.4-xenial-slim
.build/8.2.2-xenial-slim : .build
	docker build -t phadej/ghc:8.2.2-xenial-slim 8.2.2/xenial/slim
	touch .build/8.2.2-xenial-slim
.build/8.2-xenial-slim : .build
	docker build -t phadej/ghc:8.2-xenial-slim 8.2/xenial/slim
	touch .build/8.2-xenial-slim
.build/8.0.2-xenial-slim : .build
	docker build -t phadej/ghc:8.0.2-xenial-slim 8.0.2/xenial/slim
	touch .build/8.0.2-xenial-slim
.build/8.0-xenial-slim : .build
	docker build -t phadej/ghc:8.0-xenial-slim 8.0/xenial/slim
	touch .build/8.0-xenial-slim
.build/7.10.3-xenial-slim : .build
	docker build -t phadej/ghc:7.10.3-xenial-slim 7.10.3/xenial/slim
	touch .build/7.10.3-xenial-slim
.build/7.10-xenial-slim : .build
	docker build -t phadej/ghc:7.10-xenial-slim 7.10/xenial/slim
	touch .build/7.10-xenial-slim
.build/7.8.4-xenial-slim : .build
	docker build -t phadej/ghc:7.8.4-xenial-slim 7.8.4/xenial/slim
	touch .build/7.8.4-xenial-slim
.build/7.8-xenial-slim : .build
	docker build -t phadej/ghc:7.8-xenial-slim 7.8/xenial/slim
	touch .build/7.8-xenial-slim
.build/7.6.3-xenial-slim : .build
	docker build -t phadej/ghc:7.6.3-xenial-slim 7.6.3/xenial/slim
	touch .build/7.6.3-xenial-slim
.build/7.6-xenial-slim : .build
	docker build -t phadej/ghc:7.6-xenial-slim 7.6/xenial/slim
	touch .build/7.6-xenial-slim
.build/8.8.2-xenial : .build
	docker build -t phadej/ghc:8.8.2-xenial 8.8.2/xenial
	touch .build/8.8.2-xenial
.build/8.8-xenial : .build
	docker build -t phadej/ghc:8.8-xenial 8.8/xenial
	touch .build/8.8-xenial
.build/8.6.5-xenial : .build
	docker build -t phadej/ghc:8.6.5-xenial 8.6.5/xenial
	touch .build/8.6.5-xenial
.build/8.6-xenial : .build
	docker build -t phadej/ghc:8.6-xenial 8.6/xenial
	touch .build/8.6-xenial
.build/8.4.4-xenial : .build
	docker build -t phadej/ghc:8.4.4-xenial 8.4.4/xenial
	touch .build/8.4.4-xenial
.build/8.4-xenial : .build
	docker build -t phadej/ghc:8.4-xenial 8.4/xenial
	touch .build/8.4-xenial
.build/8.2.2-xenial : .build
	docker build -t phadej/ghc:8.2.2-xenial 8.2.2/xenial
	touch .build/8.2.2-xenial
.build/8.2-xenial : .build
	docker build -t phadej/ghc:8.2-xenial 8.2/xenial
	touch .build/8.2-xenial
.build/8.0.2-xenial : .build
	docker build -t phadej/ghc:8.0.2-xenial 8.0.2/xenial
	touch .build/8.0.2-xenial
.build/8.0-xenial : .build
	docker build -t phadej/ghc:8.0-xenial 8.0/xenial
	touch .build/8.0-xenial
.build/7.10.3-xenial : .build
	docker build -t phadej/ghc:7.10.3-xenial 7.10.3/xenial
	touch .build/7.10.3-xenial
.build/7.10-xenial : .build
	docker build -t phadej/ghc:7.10-xenial 7.10/xenial
	touch .build/7.10-xenial
.build/7.8.4-xenial : .build
	docker build -t phadej/ghc:7.8.4-xenial 7.8.4/xenial
	touch .build/7.8.4-xenial
.build/7.8-xenial : .build
	docker build -t phadej/ghc:7.8-xenial 7.8/xenial
	touch .build/7.8-xenial
.build/7.6.3-xenial : .build
	docker build -t phadej/ghc:7.6.3-xenial 7.6.3/xenial
	touch .build/7.6.3-xenial
.build/7.6-xenial : .build
	docker build -t phadej/ghc:7.6-xenial 7.6/xenial
	touch .build/7.6-xenial
.build/8.8.2-bionic-slim : .build
	docker build -t phadej/ghc:8.8.2-bionic-slim 8.8.2/bionic/slim
	touch .build/8.8.2-bionic-slim
.build/8.8-bionic-slim : .build
	docker build -t phadej/ghc:8.8-bionic-slim 8.8/bionic/slim
	touch .build/8.8-bionic-slim
.build/8.6.5-bionic-slim : .build
	docker build -t phadej/ghc:8.6.5-bionic-slim 8.6.5/bionic/slim
	touch .build/8.6.5-bionic-slim
.build/8.6-bionic-slim : .build
	docker build -t phadej/ghc:8.6-bionic-slim 8.6/bionic/slim
	touch .build/8.6-bionic-slim
.build/8.4.4-bionic-slim : .build
	docker build -t phadej/ghc:8.4.4-bionic-slim 8.4.4/bionic/slim
	touch .build/8.4.4-bionic-slim
.build/8.4-bionic-slim : .build
	docker build -t phadej/ghc:8.4-bionic-slim 8.4/bionic/slim
	touch .build/8.4-bionic-slim
.build/8.2.2-bionic-slim : .build
	docker build -t phadej/ghc:8.2.2-bionic-slim 8.2.2/bionic/slim
	touch .build/8.2.2-bionic-slim
.build/8.2-bionic-slim : .build
	docker build -t phadej/ghc:8.2-bionic-slim 8.2/bionic/slim
	touch .build/8.2-bionic-slim
.build/8.0.2-bionic-slim : .build
	docker build -t phadej/ghc:8.0.2-bionic-slim 8.0.2/bionic/slim
	touch .build/8.0.2-bionic-slim
.build/8.0-bionic-slim : .build
	docker build -t phadej/ghc:8.0-bionic-slim 8.0/bionic/slim
	touch .build/8.0-bionic-slim
.build/7.10.3-bionic-slim : .build
	docker build -t phadej/ghc:7.10.3-bionic-slim 7.10.3/bionic/slim
	touch .build/7.10.3-bionic-slim
.build/7.10-bionic-slim : .build
	docker build -t phadej/ghc:7.10-bionic-slim 7.10/bionic/slim
	touch .build/7.10-bionic-slim
.build/7.8.4-bionic-slim : .build
	docker build -t phadej/ghc:7.8.4-bionic-slim 7.8.4/bionic/slim
	touch .build/7.8.4-bionic-slim
.build/7.8-bionic-slim : .build
	docker build -t phadej/ghc:7.8-bionic-slim 7.8/bionic/slim
	touch .build/7.8-bionic-slim
.build/7.6.3-bionic-slim : .build
	docker build -t phadej/ghc:7.6.3-bionic-slim 7.6.3/bionic/slim
	touch .build/7.6.3-bionic-slim
.build/7.6-bionic-slim : .build
	docker build -t phadej/ghc:7.6-bionic-slim 7.6/bionic/slim
	touch .build/7.6-bionic-slim
.build/8.8.2-bionic : .build
	docker build -t phadej/ghc:8.8.2-bionic 8.8.2/bionic
	touch .build/8.8.2-bionic
.build/8.8-bionic : .build
	docker build -t phadej/ghc:8.8-bionic 8.8/bionic
	touch .build/8.8-bionic
.build/8.6.5-bionic : .build
	docker build -t phadej/ghc:8.6.5-bionic 8.6.5/bionic
	touch .build/8.6.5-bionic
.build/8.6-bionic : .build
	docker build -t phadej/ghc:8.6-bionic 8.6/bionic
	touch .build/8.6-bionic
.build/8.4.4-bionic : .build
	docker build -t phadej/ghc:8.4.4-bionic 8.4.4/bionic
	touch .build/8.4.4-bionic
.build/8.4-bionic : .build
	docker build -t phadej/ghc:8.4-bionic 8.4/bionic
	touch .build/8.4-bionic
.build/8.2.2-bionic : .build
	docker build -t phadej/ghc:8.2.2-bionic 8.2.2/bionic
	touch .build/8.2.2-bionic
.build/8.2-bionic : .build
	docker build -t phadej/ghc:8.2-bionic 8.2/bionic
	touch .build/8.2-bionic
.build/8.0.2-bionic : .build
	docker build -t phadej/ghc:8.0.2-bionic 8.0.2/bionic
	touch .build/8.0.2-bionic
.build/8.0-bionic : .build
	docker build -t phadej/ghc:8.0-bionic 8.0/bionic
	touch .build/8.0-bionic
.build/7.10.3-bionic : .build
	docker build -t phadej/ghc:7.10.3-bionic 7.10.3/bionic
	touch .build/7.10.3-bionic
.build/7.10-bionic : .build
	docker build -t phadej/ghc:7.10-bionic 7.10/bionic
	touch .build/7.10-bionic
.build/7.8.4-bionic : .build
	docker build -t phadej/ghc:7.8.4-bionic 7.8.4/bionic
	touch .build/7.8.4-bionic
.build/7.8-bionic : .build
	docker build -t phadej/ghc:7.8-bionic 7.8/bionic
	touch .build/7.8-bionic
.build/7.6.3-bionic : .build
	docker build -t phadej/ghc:7.6.3-bionic 7.6.3/bionic
	touch .build/7.6.3-bionic
.build/7.6-bionic : .build
	docker build -t phadej/ghc:7.6-bionic 7.6/bionic
	touch .build/7.6-bionic

.build :
	mkdir .build
