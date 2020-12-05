.PHONY : generate build push

generate :
	cabal-env -n docker-ghc zinza filepath directory
	runghc -package-env=docker-ghc generate.hs

build : .build/8.10.2-stretch-slim
build : .build/8.10-stretch-slim
build : .build/8.8.4-stretch-slim
build : .build/8.8-stretch-slim
build : .build/8.6.5-stretch-slim
build : .build/8.6-stretch-slim
build : .build/8.4.4-stretch-slim
build : .build/8.4-stretch-slim
build : .build/8.2.2-stretch-slim
build : .build/8.2-stretch-slim
build : .build/8.0.2-stretch-slim
build : .build/8.0-stretch-slim
build : .build/7.10.3-stretch-slim
build : .build/7.10-stretch-slim
build : .build/7.8.4-stretch-slim
build : .build/7.8-stretch-slim
build : .build/7.6.3-stretch-slim
build : .build/7.6-stretch-slim
build : .build/8.10.2-stretch
build : .build/8.10-stretch
build : .build/8.8.4-stretch
build : .build/8.8-stretch
build : .build/8.6.5-stretch
build : .build/8.6-stretch
build : .build/8.4.4-stretch
build : .build/8.4-stretch
build : .build/8.2.2-stretch
build : .build/8.2-stretch
build : .build/8.0.2-stretch
build : .build/8.0-stretch
build : .build/7.10.3-stretch
build : .build/7.10-stretch
build : .build/7.8.4-stretch
build : .build/7.8-stretch
build : .build/7.6.3-stretch
build : .build/7.6-stretch
build : .build/8.10.2-buster-slim
build : .build/8.10-buster-slim
build : .build/8.8.4-buster-slim
build : .build/8.8-buster-slim
build : .build/8.6.5-buster-slim
build : .build/8.6-buster-slim
build : .build/8.4.4-buster-slim
build : .build/8.4-buster-slim
build : .build/8.2.2-buster-slim
build : .build/8.2-buster-slim
build : .build/8.0.2-buster-slim
build : .build/8.0-buster-slim
build : .build/7.10.3-buster-slim
build : .build/7.10-buster-slim
build : .build/7.8.4-buster-slim
build : .build/7.8-buster-slim
build : .build/7.6.3-buster-slim
build : .build/7.6-buster-slim
build : .build/8.10.2-buster
build : .build/8.10-buster
build : .build/8.8.4-buster
build : .build/8.8-buster
build : .build/8.6.5-buster
build : .build/8.6-buster
build : .build/8.4.4-buster
build : .build/8.4-buster
build : .build/8.2.2-buster
build : .build/8.2-buster
build : .build/8.0.2-buster
build : .build/8.0-buster
build : .build/7.10.3-buster
build : .build/7.10-buster
build : .build/7.8.4-buster
build : .build/7.8-buster
build : .build/7.6.3-buster
build : .build/7.6-buster
build : .build/8.10.2-xenial-slim
build : .build/8.10-xenial-slim
build : .build/8.8.4-xenial-slim
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
build : .build/8.10.2-xenial
build : .build/8.10-xenial
build : .build/8.8.4-xenial
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
build : .build/8.10.2-bionic-slim
build : .build/8.10-bionic-slim
build : .build/8.8.4-bionic-slim
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
build : .build/7.4.2-bionic-slim
build : .build/7.4-bionic-slim
build : .build/7.2.2-bionic-slim
build : .build/7.2-bionic-slim
build : .build/7.0.4-bionic-slim
build : .build/7.0-bionic-slim
build : .build/8.10.2-bionic
build : .build/8.10-bionic
build : .build/8.8.4-bionic
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
build : .build/7.4.2-bionic
build : .build/7.4-bionic
build : .build/7.2.2-bionic
build : .build/7.2-bionic
build : .build/7.0.4-bionic
build : .build/7.0-bionic
build : .build/8.10.2-focal-slim
build : .build/8.10-focal-slim
build : .build/8.8.4-focal-slim
build : .build/8.8-focal-slim
build : .build/8.6.5-focal-slim
build : .build/8.6-focal-slim
build : .build/8.4.4-focal-slim
build : .build/8.4-focal-slim
build : .build/8.2.2-focal-slim
build : .build/8.2-focal-slim
build : .build/8.0.2-focal-slim
build : .build/8.0-focal-slim
build : .build/8.10.2-focal
build : .build/8.10-focal
build : .build/8.8.4-focal
build : .build/8.8-focal
build : .build/8.6.5-focal
build : .build/8.6-focal
build : .build/8.4.4-focal
build : .build/8.4-focal
build : .build/8.2.2-focal
build : .build/8.2-focal
build : .build/8.0.2-focal
build : .build/8.0-focal

push : push-8.10.2-stretch-slim
push : push-8.10-stretch-slim
push : push-8.8.4-stretch-slim
push : push-8.8-stretch-slim
push : push-8.6.5-stretch-slim
push : push-8.6-stretch-slim
push : push-8.4.4-stretch-slim
push : push-8.4-stretch-slim
push : push-8.2.2-stretch-slim
push : push-8.2-stretch-slim
push : push-8.0.2-stretch-slim
push : push-8.0-stretch-slim
push : push-7.10.3-stretch-slim
push : push-7.10-stretch-slim
push : push-7.8.4-stretch-slim
push : push-7.8-stretch-slim
push : push-7.6.3-stretch-slim
push : push-7.6-stretch-slim
push : push-8.10.2-stretch
push : push-8.10-stretch
push : push-8.8.4-stretch
push : push-8.8-stretch
push : push-8.6.5-stretch
push : push-8.6-stretch
push : push-8.4.4-stretch
push : push-8.4-stretch
push : push-8.2.2-stretch
push : push-8.2-stretch
push : push-8.0.2-stretch
push : push-8.0-stretch
push : push-7.10.3-stretch
push : push-7.10-stretch
push : push-7.8.4-stretch
push : push-7.8-stretch
push : push-7.6.3-stretch
push : push-7.6-stretch
push : push-8.10.2-buster-slim
push : push-8.10-buster-slim
push : push-8.8.4-buster-slim
push : push-8.8-buster-slim
push : push-8.6.5-buster-slim
push : push-8.6-buster-slim
push : push-8.4.4-buster-slim
push : push-8.4-buster-slim
push : push-8.2.2-buster-slim
push : push-8.2-buster-slim
push : push-8.0.2-buster-slim
push : push-8.0-buster-slim
push : push-7.10.3-buster-slim
push : push-7.10-buster-slim
push : push-7.8.4-buster-slim
push : push-7.8-buster-slim
push : push-7.6.3-buster-slim
push : push-7.6-buster-slim
push : push-8.10.2-buster
push : push-8.10-buster
push : push-8.8.4-buster
push : push-8.8-buster
push : push-8.6.5-buster
push : push-8.6-buster
push : push-8.4.4-buster
push : push-8.4-buster
push : push-8.2.2-buster
push : push-8.2-buster
push : push-8.0.2-buster
push : push-8.0-buster
push : push-7.10.3-buster
push : push-7.10-buster
push : push-7.8.4-buster
push : push-7.8-buster
push : push-7.6.3-buster
push : push-7.6-buster
push : push-8.10.2-xenial-slim
push : push-8.10-xenial-slim
push : push-8.8.4-xenial-slim
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
push : push-8.10.2-xenial
push : push-8.10-xenial
push : push-8.8.4-xenial
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
push : push-8.10.2-bionic-slim
push : push-8.10-bionic-slim
push : push-8.8.4-bionic-slim
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
push : push-7.4.2-bionic-slim
push : push-7.4-bionic-slim
push : push-7.2.2-bionic-slim
push : push-7.2-bionic-slim
push : push-7.0.4-bionic-slim
push : push-7.0-bionic-slim
push : push-8.10.2-bionic
push : push-8.10-bionic
push : push-8.8.4-bionic
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
push : push-7.4.2-bionic
push : push-7.4-bionic
push : push-7.2.2-bionic
push : push-7.2-bionic
push : push-7.0.4-bionic
push : push-7.0-bionic
push : push-8.10.2-focal-slim
push : push-8.10-focal-slim
push : push-8.8.4-focal-slim
push : push-8.8-focal-slim
push : push-8.6.5-focal-slim
push : push-8.6-focal-slim
push : push-8.4.4-focal-slim
push : push-8.4-focal-slim
push : push-8.2.2-focal-slim
push : push-8.2-focal-slim
push : push-8.0.2-focal-slim
push : push-8.0-focal-slim
push : push-8.10.2-focal
push : push-8.10-focal
push : push-8.8.4-focal
push : push-8.8-focal
push : push-8.6.5-focal
push : push-8.6-focal
push : push-8.4.4-focal
push : push-8.4-focal
push : push-8.2.2-focal
push : push-8.2-focal
push : push-8.0.2-focal
push : push-8.0-focal

push-8.10.2 : push-8.10.2-stretch-slim
push-8.10.2-stretch-slim : .build/8.10.2-stretch-slim
	docker push phadej/ghc:8.10.2-stretch-slim
push-8.10.2 : push-8.10-stretch-slim
push-8.10-stretch-slim : .build/8.10-stretch-slim
	docker push phadej/ghc:8.10-stretch-slim
push-8.8.4 : push-8.8.4-stretch-slim
push-8.8.4-stretch-slim : .build/8.8.4-stretch-slim
	docker push phadej/ghc:8.8.4-stretch-slim
push-8.8.4 : push-8.8-stretch-slim
push-8.8-stretch-slim : .build/8.8-stretch-slim
	docker push phadej/ghc:8.8-stretch-slim
push-8.6.5 : push-8.6.5-stretch-slim
push-8.6.5-stretch-slim : .build/8.6.5-stretch-slim
	docker push phadej/ghc:8.6.5-stretch-slim
push-8.6.5 : push-8.6-stretch-slim
push-8.6-stretch-slim : .build/8.6-stretch-slim
	docker push phadej/ghc:8.6-stretch-slim
push-8.4.4 : push-8.4.4-stretch-slim
push-8.4.4-stretch-slim : .build/8.4.4-stretch-slim
	docker push phadej/ghc:8.4.4-stretch-slim
push-8.4.4 : push-8.4-stretch-slim
push-8.4-stretch-slim : .build/8.4-stretch-slim
	docker push phadej/ghc:8.4-stretch-slim
push-8.2.2 : push-8.2.2-stretch-slim
push-8.2.2-stretch-slim : .build/8.2.2-stretch-slim
	docker push phadej/ghc:8.2.2-stretch-slim
push-8.2.2 : push-8.2-stretch-slim
push-8.2-stretch-slim : .build/8.2-stretch-slim
	docker push phadej/ghc:8.2-stretch-slim
push-8.0.2 : push-8.0.2-stretch-slim
push-8.0.2-stretch-slim : .build/8.0.2-stretch-slim
	docker push phadej/ghc:8.0.2-stretch-slim
push-8.0.2 : push-8.0-stretch-slim
push-8.0-stretch-slim : .build/8.0-stretch-slim
	docker push phadej/ghc:8.0-stretch-slim
push-7.10.3 : push-7.10.3-stretch-slim
push-7.10.3-stretch-slim : .build/7.10.3-stretch-slim
	docker push phadej/ghc:7.10.3-stretch-slim
push-7.10.3 : push-7.10-stretch-slim
push-7.10-stretch-slim : .build/7.10-stretch-slim
	docker push phadej/ghc:7.10-stretch-slim
push-7.8.4 : push-7.8.4-stretch-slim
push-7.8.4-stretch-slim : .build/7.8.4-stretch-slim
	docker push phadej/ghc:7.8.4-stretch-slim
push-7.8.4 : push-7.8-stretch-slim
push-7.8-stretch-slim : .build/7.8-stretch-slim
	docker push phadej/ghc:7.8-stretch-slim
push-7.6.3 : push-7.6.3-stretch-slim
push-7.6.3-stretch-slim : .build/7.6.3-stretch-slim
	docker push phadej/ghc:7.6.3-stretch-slim
push-7.6.3 : push-7.6-stretch-slim
push-7.6-stretch-slim : .build/7.6-stretch-slim
	docker push phadej/ghc:7.6-stretch-slim
push-8.10.2 : push-8.10.2-stretch
push-8.10.2-stretch : .build/8.10.2-stretch
	docker push phadej/ghc:8.10.2-stretch
push-8.10.2 : push-8.10-stretch
push-8.10-stretch : .build/8.10-stretch
	docker push phadej/ghc:8.10-stretch
push-8.8.4 : push-8.8.4-stretch
push-8.8.4-stretch : .build/8.8.4-stretch
	docker push phadej/ghc:8.8.4-stretch
push-8.8.4 : push-8.8-stretch
push-8.8-stretch : .build/8.8-stretch
	docker push phadej/ghc:8.8-stretch
push-8.6.5 : push-8.6.5-stretch
push-8.6.5-stretch : .build/8.6.5-stretch
	docker push phadej/ghc:8.6.5-stretch
push-8.6.5 : push-8.6-stretch
push-8.6-stretch : .build/8.6-stretch
	docker push phadej/ghc:8.6-stretch
push-8.4.4 : push-8.4.4-stretch
push-8.4.4-stretch : .build/8.4.4-stretch
	docker push phadej/ghc:8.4.4-stretch
push-8.4.4 : push-8.4-stretch
push-8.4-stretch : .build/8.4-stretch
	docker push phadej/ghc:8.4-stretch
push-8.2.2 : push-8.2.2-stretch
push-8.2.2-stretch : .build/8.2.2-stretch
	docker push phadej/ghc:8.2.2-stretch
push-8.2.2 : push-8.2-stretch
push-8.2-stretch : .build/8.2-stretch
	docker push phadej/ghc:8.2-stretch
push-8.0.2 : push-8.0.2-stretch
push-8.0.2-stretch : .build/8.0.2-stretch
	docker push phadej/ghc:8.0.2-stretch
push-8.0.2 : push-8.0-stretch
push-8.0-stretch : .build/8.0-stretch
	docker push phadej/ghc:8.0-stretch
push-7.10.3 : push-7.10.3-stretch
push-7.10.3-stretch : .build/7.10.3-stretch
	docker push phadej/ghc:7.10.3-stretch
push-7.10.3 : push-7.10-stretch
push-7.10-stretch : .build/7.10-stretch
	docker push phadej/ghc:7.10-stretch
push-7.8.4 : push-7.8.4-stretch
push-7.8.4-stretch : .build/7.8.4-stretch
	docker push phadej/ghc:7.8.4-stretch
push-7.8.4 : push-7.8-stretch
push-7.8-stretch : .build/7.8-stretch
	docker push phadej/ghc:7.8-stretch
push-7.6.3 : push-7.6.3-stretch
push-7.6.3-stretch : .build/7.6.3-stretch
	docker push phadej/ghc:7.6.3-stretch
push-7.6.3 : push-7.6-stretch
push-7.6-stretch : .build/7.6-stretch
	docker push phadej/ghc:7.6-stretch
push-8.10.2 : push-8.10.2-buster-slim
push-8.10.2-buster-slim : .build/8.10.2-buster-slim
	docker push phadej/ghc:8.10.2-buster-slim
push-8.10.2 : push-8.10-buster-slim
push-8.10-buster-slim : .build/8.10-buster-slim
	docker push phadej/ghc:8.10-buster-slim
push-8.8.4 : push-8.8.4-buster-slim
push-8.8.4-buster-slim : .build/8.8.4-buster-slim
	docker push phadej/ghc:8.8.4-buster-slim
push-8.8.4 : push-8.8-buster-slim
push-8.8-buster-slim : .build/8.8-buster-slim
	docker push phadej/ghc:8.8-buster-slim
push-8.6.5 : push-8.6.5-buster-slim
push-8.6.5-buster-slim : .build/8.6.5-buster-slim
	docker push phadej/ghc:8.6.5-buster-slim
push-8.6.5 : push-8.6-buster-slim
push-8.6-buster-slim : .build/8.6-buster-slim
	docker push phadej/ghc:8.6-buster-slim
push-8.4.4 : push-8.4.4-buster-slim
push-8.4.4-buster-slim : .build/8.4.4-buster-slim
	docker push phadej/ghc:8.4.4-buster-slim
push-8.4.4 : push-8.4-buster-slim
push-8.4-buster-slim : .build/8.4-buster-slim
	docker push phadej/ghc:8.4-buster-slim
push-8.2.2 : push-8.2.2-buster-slim
push-8.2.2-buster-slim : .build/8.2.2-buster-slim
	docker push phadej/ghc:8.2.2-buster-slim
push-8.2.2 : push-8.2-buster-slim
push-8.2-buster-slim : .build/8.2-buster-slim
	docker push phadej/ghc:8.2-buster-slim
push-8.0.2 : push-8.0.2-buster-slim
push-8.0.2-buster-slim : .build/8.0.2-buster-slim
	docker push phadej/ghc:8.0.2-buster-slim
push-8.0.2 : push-8.0-buster-slim
push-8.0-buster-slim : .build/8.0-buster-slim
	docker push phadej/ghc:8.0-buster-slim
push-7.10.3 : push-7.10.3-buster-slim
push-7.10.3-buster-slim : .build/7.10.3-buster-slim
	docker push phadej/ghc:7.10.3-buster-slim
push-7.10.3 : push-7.10-buster-slim
push-7.10-buster-slim : .build/7.10-buster-slim
	docker push phadej/ghc:7.10-buster-slim
push-7.8.4 : push-7.8.4-buster-slim
push-7.8.4-buster-slim : .build/7.8.4-buster-slim
	docker push phadej/ghc:7.8.4-buster-slim
push-7.8.4 : push-7.8-buster-slim
push-7.8-buster-slim : .build/7.8-buster-slim
	docker push phadej/ghc:7.8-buster-slim
push-7.6.3 : push-7.6.3-buster-slim
push-7.6.3-buster-slim : .build/7.6.3-buster-slim
	docker push phadej/ghc:7.6.3-buster-slim
push-7.6.3 : push-7.6-buster-slim
push-7.6-buster-slim : .build/7.6-buster-slim
	docker push phadej/ghc:7.6-buster-slim
push-8.10.2 : push-8.10.2-buster
push-8.10.2-buster : .build/8.10.2-buster
	docker push phadej/ghc:8.10.2-buster
push-8.10.2 : push-8.10-buster
push-8.10-buster : .build/8.10-buster
	docker push phadej/ghc:8.10-buster
push-8.8.4 : push-8.8.4-buster
push-8.8.4-buster : .build/8.8.4-buster
	docker push phadej/ghc:8.8.4-buster
push-8.8.4 : push-8.8-buster
push-8.8-buster : .build/8.8-buster
	docker push phadej/ghc:8.8-buster
push-8.6.5 : push-8.6.5-buster
push-8.6.5-buster : .build/8.6.5-buster
	docker push phadej/ghc:8.6.5-buster
push-8.6.5 : push-8.6-buster
push-8.6-buster : .build/8.6-buster
	docker push phadej/ghc:8.6-buster
push-8.4.4 : push-8.4.4-buster
push-8.4.4-buster : .build/8.4.4-buster
	docker push phadej/ghc:8.4.4-buster
push-8.4.4 : push-8.4-buster
push-8.4-buster : .build/8.4-buster
	docker push phadej/ghc:8.4-buster
push-8.2.2 : push-8.2.2-buster
push-8.2.2-buster : .build/8.2.2-buster
	docker push phadej/ghc:8.2.2-buster
push-8.2.2 : push-8.2-buster
push-8.2-buster : .build/8.2-buster
	docker push phadej/ghc:8.2-buster
push-8.0.2 : push-8.0.2-buster
push-8.0.2-buster : .build/8.0.2-buster
	docker push phadej/ghc:8.0.2-buster
push-8.0.2 : push-8.0-buster
push-8.0-buster : .build/8.0-buster
	docker push phadej/ghc:8.0-buster
push-7.10.3 : push-7.10.3-buster
push-7.10.3-buster : .build/7.10.3-buster
	docker push phadej/ghc:7.10.3-buster
push-7.10.3 : push-7.10-buster
push-7.10-buster : .build/7.10-buster
	docker push phadej/ghc:7.10-buster
push-7.8.4 : push-7.8.4-buster
push-7.8.4-buster : .build/7.8.4-buster
	docker push phadej/ghc:7.8.4-buster
push-7.8.4 : push-7.8-buster
push-7.8-buster : .build/7.8-buster
	docker push phadej/ghc:7.8-buster
push-7.6.3 : push-7.6.3-buster
push-7.6.3-buster : .build/7.6.3-buster
	docker push phadej/ghc:7.6.3-buster
push-7.6.3 : push-7.6-buster
push-7.6-buster : .build/7.6-buster
	docker push phadej/ghc:7.6-buster
push-8.10.2 : push-8.10.2-xenial-slim
push-8.10.2-xenial-slim : .build/8.10.2-xenial-slim
	docker push phadej/ghc:8.10.2-xenial-slim
push-8.10.2 : push-8.10-xenial-slim
push-8.10-xenial-slim : .build/8.10-xenial-slim
	docker push phadej/ghc:8.10-xenial-slim
push-8.8.4 : push-8.8.4-xenial-slim
push-8.8.4-xenial-slim : .build/8.8.4-xenial-slim
	docker push phadej/ghc:8.8.4-xenial-slim
push-8.8.4 : push-8.8-xenial-slim
push-8.8-xenial-slim : .build/8.8-xenial-slim
	docker push phadej/ghc:8.8-xenial-slim
push-8.6.5 : push-8.6.5-xenial-slim
push-8.6.5-xenial-slim : .build/8.6.5-xenial-slim
	docker push phadej/ghc:8.6.5-xenial-slim
push-8.6.5 : push-8.6-xenial-slim
push-8.6-xenial-slim : .build/8.6-xenial-slim
	docker push phadej/ghc:8.6-xenial-slim
push-8.4.4 : push-8.4.4-xenial-slim
push-8.4.4-xenial-slim : .build/8.4.4-xenial-slim
	docker push phadej/ghc:8.4.4-xenial-slim
push-8.4.4 : push-8.4-xenial-slim
push-8.4-xenial-slim : .build/8.4-xenial-slim
	docker push phadej/ghc:8.4-xenial-slim
push-8.2.2 : push-8.2.2-xenial-slim
push-8.2.2-xenial-slim : .build/8.2.2-xenial-slim
	docker push phadej/ghc:8.2.2-xenial-slim
push-8.2.2 : push-8.2-xenial-slim
push-8.2-xenial-slim : .build/8.2-xenial-slim
	docker push phadej/ghc:8.2-xenial-slim
push-8.0.2 : push-8.0.2-xenial-slim
push-8.0.2-xenial-slim : .build/8.0.2-xenial-slim
	docker push phadej/ghc:8.0.2-xenial-slim
push-8.0.2 : push-8.0-xenial-slim
push-8.0-xenial-slim : .build/8.0-xenial-slim
	docker push phadej/ghc:8.0-xenial-slim
push-7.10.3 : push-7.10.3-xenial-slim
push-7.10.3-xenial-slim : .build/7.10.3-xenial-slim
	docker push phadej/ghc:7.10.3-xenial-slim
push-7.10.3 : push-7.10-xenial-slim
push-7.10-xenial-slim : .build/7.10-xenial-slim
	docker push phadej/ghc:7.10-xenial-slim
push-7.8.4 : push-7.8.4-xenial-slim
push-7.8.4-xenial-slim : .build/7.8.4-xenial-slim
	docker push phadej/ghc:7.8.4-xenial-slim
push-7.8.4 : push-7.8-xenial-slim
push-7.8-xenial-slim : .build/7.8-xenial-slim
	docker push phadej/ghc:7.8-xenial-slim
push-7.6.3 : push-7.6.3-xenial-slim
push-7.6.3-xenial-slim : .build/7.6.3-xenial-slim
	docker push phadej/ghc:7.6.3-xenial-slim
push-7.6.3 : push-7.6-xenial-slim
push-7.6-xenial-slim : .build/7.6-xenial-slim
	docker push phadej/ghc:7.6-xenial-slim
push-8.10.2 : push-8.10.2-xenial
push-8.10.2-xenial : .build/8.10.2-xenial
	docker push phadej/ghc:8.10.2-xenial
push-8.10.2 : push-8.10-xenial
push-8.10-xenial : .build/8.10-xenial
	docker push phadej/ghc:8.10-xenial
push-8.8.4 : push-8.8.4-xenial
push-8.8.4-xenial : .build/8.8.4-xenial
	docker push phadej/ghc:8.8.4-xenial
push-8.8.4 : push-8.8-xenial
push-8.8-xenial : .build/8.8-xenial
	docker push phadej/ghc:8.8-xenial
push-8.6.5 : push-8.6.5-xenial
push-8.6.5-xenial : .build/8.6.5-xenial
	docker push phadej/ghc:8.6.5-xenial
push-8.6.5 : push-8.6-xenial
push-8.6-xenial : .build/8.6-xenial
	docker push phadej/ghc:8.6-xenial
push-8.4.4 : push-8.4.4-xenial
push-8.4.4-xenial : .build/8.4.4-xenial
	docker push phadej/ghc:8.4.4-xenial
push-8.4.4 : push-8.4-xenial
push-8.4-xenial : .build/8.4-xenial
	docker push phadej/ghc:8.4-xenial
push-8.2.2 : push-8.2.2-xenial
push-8.2.2-xenial : .build/8.2.2-xenial
	docker push phadej/ghc:8.2.2-xenial
push-8.2.2 : push-8.2-xenial
push-8.2-xenial : .build/8.2-xenial
	docker push phadej/ghc:8.2-xenial
push-8.0.2 : push-8.0.2-xenial
push-8.0.2-xenial : .build/8.0.2-xenial
	docker push phadej/ghc:8.0.2-xenial
push-8.0.2 : push-8.0-xenial
push-8.0-xenial : .build/8.0-xenial
	docker push phadej/ghc:8.0-xenial
push-7.10.3 : push-7.10.3-xenial
push-7.10.3-xenial : .build/7.10.3-xenial
	docker push phadej/ghc:7.10.3-xenial
push-7.10.3 : push-7.10-xenial
push-7.10-xenial : .build/7.10-xenial
	docker push phadej/ghc:7.10-xenial
push-7.8.4 : push-7.8.4-xenial
push-7.8.4-xenial : .build/7.8.4-xenial
	docker push phadej/ghc:7.8.4-xenial
push-7.8.4 : push-7.8-xenial
push-7.8-xenial : .build/7.8-xenial
	docker push phadej/ghc:7.8-xenial
push-7.6.3 : push-7.6.3-xenial
push-7.6.3-xenial : .build/7.6.3-xenial
	docker push phadej/ghc:7.6.3-xenial
push-7.6.3 : push-7.6-xenial
push-7.6-xenial : .build/7.6-xenial
	docker push phadej/ghc:7.6-xenial
push-8.10.2 : push-8.10.2-bionic-slim
push-8.10.2-bionic-slim : .build/8.10.2-bionic-slim
	docker push phadej/ghc:8.10.2-bionic-slim
push-8.10.2 : push-8.10-bionic-slim
push-8.10-bionic-slim : .build/8.10-bionic-slim
	docker push phadej/ghc:8.10-bionic-slim
push-8.8.4 : push-8.8.4-bionic-slim
push-8.8.4-bionic-slim : .build/8.8.4-bionic-slim
	docker push phadej/ghc:8.8.4-bionic-slim
push-8.8.4 : push-8.8-bionic-slim
push-8.8-bionic-slim : .build/8.8-bionic-slim
	docker push phadej/ghc:8.8-bionic-slim
push-8.6.5 : push-8.6.5-bionic-slim
push-8.6.5-bionic-slim : .build/8.6.5-bionic-slim
	docker push phadej/ghc:8.6.5-bionic-slim
push-8.6.5 : push-8.6-bionic-slim
push-8.6-bionic-slim : .build/8.6-bionic-slim
	docker push phadej/ghc:8.6-bionic-slim
push-8.4.4 : push-8.4.4-bionic-slim
push-8.4.4-bionic-slim : .build/8.4.4-bionic-slim
	docker push phadej/ghc:8.4.4-bionic-slim
push-8.4.4 : push-8.4-bionic-slim
push-8.4-bionic-slim : .build/8.4-bionic-slim
	docker push phadej/ghc:8.4-bionic-slim
push-8.2.2 : push-8.2.2-bionic-slim
push-8.2.2-bionic-slim : .build/8.2.2-bionic-slim
	docker push phadej/ghc:8.2.2-bionic-slim
push-8.2.2 : push-8.2-bionic-slim
push-8.2-bionic-slim : .build/8.2-bionic-slim
	docker push phadej/ghc:8.2-bionic-slim
push-8.0.2 : push-8.0.2-bionic-slim
push-8.0.2-bionic-slim : .build/8.0.2-bionic-slim
	docker push phadej/ghc:8.0.2-bionic-slim
push-8.0.2 : push-8.0-bionic-slim
push-8.0-bionic-slim : .build/8.0-bionic-slim
	docker push phadej/ghc:8.0-bionic-slim
push-7.10.3 : push-7.10.3-bionic-slim
push-7.10.3-bionic-slim : .build/7.10.3-bionic-slim
	docker push phadej/ghc:7.10.3-bionic-slim
push-7.10.3 : push-7.10-bionic-slim
push-7.10-bionic-slim : .build/7.10-bionic-slim
	docker push phadej/ghc:7.10-bionic-slim
push-7.8.4 : push-7.8.4-bionic-slim
push-7.8.4-bionic-slim : .build/7.8.4-bionic-slim
	docker push phadej/ghc:7.8.4-bionic-slim
push-7.8.4 : push-7.8-bionic-slim
push-7.8-bionic-slim : .build/7.8-bionic-slim
	docker push phadej/ghc:7.8-bionic-slim
push-7.6.3 : push-7.6.3-bionic-slim
push-7.6.3-bionic-slim : .build/7.6.3-bionic-slim
	docker push phadej/ghc:7.6.3-bionic-slim
push-7.6.3 : push-7.6-bionic-slim
push-7.6-bionic-slim : .build/7.6-bionic-slim
	docker push phadej/ghc:7.6-bionic-slim
push-7.4.2 : push-7.4.2-bionic-slim
push-7.4.2-bionic-slim : .build/7.4.2-bionic-slim
	docker push phadej/ghc:7.4.2-bionic-slim
push-7.4.2 : push-7.4-bionic-slim
push-7.4-bionic-slim : .build/7.4-bionic-slim
	docker push phadej/ghc:7.4-bionic-slim
push-7.2.2 : push-7.2.2-bionic-slim
push-7.2.2-bionic-slim : .build/7.2.2-bionic-slim
	docker push phadej/ghc:7.2.2-bionic-slim
push-7.2.2 : push-7.2-bionic-slim
push-7.2-bionic-slim : .build/7.2-bionic-slim
	docker push phadej/ghc:7.2-bionic-slim
push-7.0.4 : push-7.0.4-bionic-slim
push-7.0.4-bionic-slim : .build/7.0.4-bionic-slim
	docker push phadej/ghc:7.0.4-bionic-slim
push-7.0.4 : push-7.0-bionic-slim
push-7.0-bionic-slim : .build/7.0-bionic-slim
	docker push phadej/ghc:7.0-bionic-slim
push-8.10.2 : push-8.10.2-bionic
push-8.10.2-bionic : .build/8.10.2-bionic
	docker push phadej/ghc:8.10.2-bionic
push-8.10.2 : push-8.10-bionic
push-8.10-bionic : .build/8.10-bionic
	docker push phadej/ghc:8.10-bionic
push-8.8.4 : push-8.8.4-bionic
push-8.8.4-bionic : .build/8.8.4-bionic
	docker push phadej/ghc:8.8.4-bionic
push-8.8.4 : push-8.8-bionic
push-8.8-bionic : .build/8.8-bionic
	docker push phadej/ghc:8.8-bionic
push-8.6.5 : push-8.6.5-bionic
push-8.6.5-bionic : .build/8.6.5-bionic
	docker push phadej/ghc:8.6.5-bionic
push-8.6.5 : push-8.6-bionic
push-8.6-bionic : .build/8.6-bionic
	docker push phadej/ghc:8.6-bionic
push-8.4.4 : push-8.4.4-bionic
push-8.4.4-bionic : .build/8.4.4-bionic
	docker push phadej/ghc:8.4.4-bionic
push-8.4.4 : push-8.4-bionic
push-8.4-bionic : .build/8.4-bionic
	docker push phadej/ghc:8.4-bionic
push-8.2.2 : push-8.2.2-bionic
push-8.2.2-bionic : .build/8.2.2-bionic
	docker push phadej/ghc:8.2.2-bionic
push-8.2.2 : push-8.2-bionic
push-8.2-bionic : .build/8.2-bionic
	docker push phadej/ghc:8.2-bionic
push-8.0.2 : push-8.0.2-bionic
push-8.0.2-bionic : .build/8.0.2-bionic
	docker push phadej/ghc:8.0.2-bionic
push-8.0.2 : push-8.0-bionic
push-8.0-bionic : .build/8.0-bionic
	docker push phadej/ghc:8.0-bionic
push-7.10.3 : push-7.10.3-bionic
push-7.10.3-bionic : .build/7.10.3-bionic
	docker push phadej/ghc:7.10.3-bionic
push-7.10.3 : push-7.10-bionic
push-7.10-bionic : .build/7.10-bionic
	docker push phadej/ghc:7.10-bionic
push-7.8.4 : push-7.8.4-bionic
push-7.8.4-bionic : .build/7.8.4-bionic
	docker push phadej/ghc:7.8.4-bionic
push-7.8.4 : push-7.8-bionic
push-7.8-bionic : .build/7.8-bionic
	docker push phadej/ghc:7.8-bionic
push-7.6.3 : push-7.6.3-bionic
push-7.6.3-bionic : .build/7.6.3-bionic
	docker push phadej/ghc:7.6.3-bionic
push-7.6.3 : push-7.6-bionic
push-7.6-bionic : .build/7.6-bionic
	docker push phadej/ghc:7.6-bionic
push-7.4.2 : push-7.4.2-bionic
push-7.4.2-bionic : .build/7.4.2-bionic
	docker push phadej/ghc:7.4.2-bionic
push-7.4.2 : push-7.4-bionic
push-7.4-bionic : .build/7.4-bionic
	docker push phadej/ghc:7.4-bionic
push-7.2.2 : push-7.2.2-bionic
push-7.2.2-bionic : .build/7.2.2-bionic
	docker push phadej/ghc:7.2.2-bionic
push-7.2.2 : push-7.2-bionic
push-7.2-bionic : .build/7.2-bionic
	docker push phadej/ghc:7.2-bionic
push-7.0.4 : push-7.0.4-bionic
push-7.0.4-bionic : .build/7.0.4-bionic
	docker push phadej/ghc:7.0.4-bionic
push-7.0.4 : push-7.0-bionic
push-7.0-bionic : .build/7.0-bionic
	docker push phadej/ghc:7.0-bionic
push-8.10.2 : push-8.10.2-focal-slim
push-8.10.2-focal-slim : .build/8.10.2-focal-slim
	docker push phadej/ghc:8.10.2-focal-slim
push-8.10.2 : push-8.10-focal-slim
push-8.10-focal-slim : .build/8.10-focal-slim
	docker push phadej/ghc:8.10-focal-slim
push-8.8.4 : push-8.8.4-focal-slim
push-8.8.4-focal-slim : .build/8.8.4-focal-slim
	docker push phadej/ghc:8.8.4-focal-slim
push-8.8.4 : push-8.8-focal-slim
push-8.8-focal-slim : .build/8.8-focal-slim
	docker push phadej/ghc:8.8-focal-slim
push-8.6.5 : push-8.6.5-focal-slim
push-8.6.5-focal-slim : .build/8.6.5-focal-slim
	docker push phadej/ghc:8.6.5-focal-slim
push-8.6.5 : push-8.6-focal-slim
push-8.6-focal-slim : .build/8.6-focal-slim
	docker push phadej/ghc:8.6-focal-slim
push-8.4.4 : push-8.4.4-focal-slim
push-8.4.4-focal-slim : .build/8.4.4-focal-slim
	docker push phadej/ghc:8.4.4-focal-slim
push-8.4.4 : push-8.4-focal-slim
push-8.4-focal-slim : .build/8.4-focal-slim
	docker push phadej/ghc:8.4-focal-slim
push-8.2.2 : push-8.2.2-focal-slim
push-8.2.2-focal-slim : .build/8.2.2-focal-slim
	docker push phadej/ghc:8.2.2-focal-slim
push-8.2.2 : push-8.2-focal-slim
push-8.2-focal-slim : .build/8.2-focal-slim
	docker push phadej/ghc:8.2-focal-slim
push-8.0.2 : push-8.0.2-focal-slim
push-8.0.2-focal-slim : .build/8.0.2-focal-slim
	docker push phadej/ghc:8.0.2-focal-slim
push-8.0.2 : push-8.0-focal-slim
push-8.0-focal-slim : .build/8.0-focal-slim
	docker push phadej/ghc:8.0-focal-slim
push-8.10.2 : push-8.10.2-focal
push-8.10.2-focal : .build/8.10.2-focal
	docker push phadej/ghc:8.10.2-focal
push-8.10.2 : push-8.10-focal
push-8.10-focal : .build/8.10-focal
	docker push phadej/ghc:8.10-focal
push-8.8.4 : push-8.8.4-focal
push-8.8.4-focal : .build/8.8.4-focal
	docker push phadej/ghc:8.8.4-focal
push-8.8.4 : push-8.8-focal
push-8.8-focal : .build/8.8-focal
	docker push phadej/ghc:8.8-focal
push-8.6.5 : push-8.6.5-focal
push-8.6.5-focal : .build/8.6.5-focal
	docker push phadej/ghc:8.6.5-focal
push-8.6.5 : push-8.6-focal
push-8.6-focal : .build/8.6-focal
	docker push phadej/ghc:8.6-focal
push-8.4.4 : push-8.4.4-focal
push-8.4.4-focal : .build/8.4.4-focal
	docker push phadej/ghc:8.4.4-focal
push-8.4.4 : push-8.4-focal
push-8.4-focal : .build/8.4-focal
	docker push phadej/ghc:8.4-focal
push-8.2.2 : push-8.2.2-focal
push-8.2.2-focal : .build/8.2.2-focal
	docker push phadej/ghc:8.2.2-focal
push-8.2.2 : push-8.2-focal
push-8.2-focal : .build/8.2-focal
	docker push phadej/ghc:8.2-focal
push-8.0.2 : push-8.0.2-focal
push-8.0.2-focal : .build/8.0.2-focal
	docker push phadej/ghc:8.0.2-focal
push-8.0.2 : push-8.0-focal
push-8.0-focal : .build/8.0-focal
	docker push phadej/ghc:8.0-focal

.build/8.10.2-stretch-slim : .build
	docker build -t phadej/ghc:8.10.2-stretch-slim 8.10.2/stretch/slim
	touch .build/8.10.2-stretch-slim
.build/8.10-stretch-slim : .build
	docker build -t phadej/ghc:8.10-stretch-slim 8.10/stretch/slim
	touch .build/8.10-stretch-slim
.build/8.8.4-stretch-slim : .build
	docker build -t phadej/ghc:8.8.4-stretch-slim 8.8.4/stretch/slim
	touch .build/8.8.4-stretch-slim
.build/8.8-stretch-slim : .build
	docker build -t phadej/ghc:8.8-stretch-slim 8.8/stretch/slim
	touch .build/8.8-stretch-slim
.build/8.6.5-stretch-slim : .build
	docker build -t phadej/ghc:8.6.5-stretch-slim 8.6.5/stretch/slim
	touch .build/8.6.5-stretch-slim
.build/8.6-stretch-slim : .build
	docker build -t phadej/ghc:8.6-stretch-slim 8.6/stretch/slim
	touch .build/8.6-stretch-slim
.build/8.4.4-stretch-slim : .build
	docker build -t phadej/ghc:8.4.4-stretch-slim 8.4.4/stretch/slim
	touch .build/8.4.4-stretch-slim
.build/8.4-stretch-slim : .build
	docker build -t phadej/ghc:8.4-stretch-slim 8.4/stretch/slim
	touch .build/8.4-stretch-slim
.build/8.2.2-stretch-slim : .build
	docker build -t phadej/ghc:8.2.2-stretch-slim 8.2.2/stretch/slim
	touch .build/8.2.2-stretch-slim
.build/8.2-stretch-slim : .build
	docker build -t phadej/ghc:8.2-stretch-slim 8.2/stretch/slim
	touch .build/8.2-stretch-slim
.build/8.0.2-stretch-slim : .build
	docker build -t phadej/ghc:8.0.2-stretch-slim 8.0.2/stretch/slim
	touch .build/8.0.2-stretch-slim
.build/8.0-stretch-slim : .build
	docker build -t phadej/ghc:8.0-stretch-slim 8.0/stretch/slim
	touch .build/8.0-stretch-slim
.build/7.10.3-stretch-slim : .build
	docker build -t phadej/ghc:7.10.3-stretch-slim 7.10.3/stretch/slim
	touch .build/7.10.3-stretch-slim
.build/7.10-stretch-slim : .build
	docker build -t phadej/ghc:7.10-stretch-slim 7.10/stretch/slim
	touch .build/7.10-stretch-slim
.build/7.8.4-stretch-slim : .build
	docker build -t phadej/ghc:7.8.4-stretch-slim 7.8.4/stretch/slim
	touch .build/7.8.4-stretch-slim
.build/7.8-stretch-slim : .build
	docker build -t phadej/ghc:7.8-stretch-slim 7.8/stretch/slim
	touch .build/7.8-stretch-slim
.build/7.6.3-stretch-slim : .build
	docker build -t phadej/ghc:7.6.3-stretch-slim 7.6.3/stretch/slim
	touch .build/7.6.3-stretch-slim
.build/7.6-stretch-slim : .build
	docker build -t phadej/ghc:7.6-stretch-slim 7.6/stretch/slim
	touch .build/7.6-stretch-slim
.build/8.10.2-stretch : .build
	docker build -t phadej/ghc:8.10.2-stretch 8.10.2/stretch
	touch .build/8.10.2-stretch
.build/8.10-stretch : .build
	docker build -t phadej/ghc:8.10-stretch 8.10/stretch
	touch .build/8.10-stretch
.build/8.8.4-stretch : .build
	docker build -t phadej/ghc:8.8.4-stretch 8.8.4/stretch
	touch .build/8.8.4-stretch
.build/8.8-stretch : .build
	docker build -t phadej/ghc:8.8-stretch 8.8/stretch
	touch .build/8.8-stretch
.build/8.6.5-stretch : .build
	docker build -t phadej/ghc:8.6.5-stretch 8.6.5/stretch
	touch .build/8.6.5-stretch
.build/8.6-stretch : .build
	docker build -t phadej/ghc:8.6-stretch 8.6/stretch
	touch .build/8.6-stretch
.build/8.4.4-stretch : .build
	docker build -t phadej/ghc:8.4.4-stretch 8.4.4/stretch
	touch .build/8.4.4-stretch
.build/8.4-stretch : .build
	docker build -t phadej/ghc:8.4-stretch 8.4/stretch
	touch .build/8.4-stretch
.build/8.2.2-stretch : .build
	docker build -t phadej/ghc:8.2.2-stretch 8.2.2/stretch
	touch .build/8.2.2-stretch
.build/8.2-stretch : .build
	docker build -t phadej/ghc:8.2-stretch 8.2/stretch
	touch .build/8.2-stretch
.build/8.0.2-stretch : .build
	docker build -t phadej/ghc:8.0.2-stretch 8.0.2/stretch
	touch .build/8.0.2-stretch
.build/8.0-stretch : .build
	docker build -t phadej/ghc:8.0-stretch 8.0/stretch
	touch .build/8.0-stretch
.build/7.10.3-stretch : .build
	docker build -t phadej/ghc:7.10.3-stretch 7.10.3/stretch
	touch .build/7.10.3-stretch
.build/7.10-stretch : .build
	docker build -t phadej/ghc:7.10-stretch 7.10/stretch
	touch .build/7.10-stretch
.build/7.8.4-stretch : .build
	docker build -t phadej/ghc:7.8.4-stretch 7.8.4/stretch
	touch .build/7.8.4-stretch
.build/7.8-stretch : .build
	docker build -t phadej/ghc:7.8-stretch 7.8/stretch
	touch .build/7.8-stretch
.build/7.6.3-stretch : .build
	docker build -t phadej/ghc:7.6.3-stretch 7.6.3/stretch
	touch .build/7.6.3-stretch
.build/7.6-stretch : .build
	docker build -t phadej/ghc:7.6-stretch 7.6/stretch
	touch .build/7.6-stretch
.build/8.10.2-buster-slim : .build
	docker build -t phadej/ghc:8.10.2-buster-slim 8.10.2/buster/slim
	touch .build/8.10.2-buster-slim
.build/8.10-buster-slim : .build
	docker build -t phadej/ghc:8.10-buster-slim 8.10/buster/slim
	touch .build/8.10-buster-slim
.build/8.8.4-buster-slim : .build
	docker build -t phadej/ghc:8.8.4-buster-slim 8.8.4/buster/slim
	touch .build/8.8.4-buster-slim
.build/8.8-buster-slim : .build
	docker build -t phadej/ghc:8.8-buster-slim 8.8/buster/slim
	touch .build/8.8-buster-slim
.build/8.6.5-buster-slim : .build
	docker build -t phadej/ghc:8.6.5-buster-slim 8.6.5/buster/slim
	touch .build/8.6.5-buster-slim
.build/8.6-buster-slim : .build
	docker build -t phadej/ghc:8.6-buster-slim 8.6/buster/slim
	touch .build/8.6-buster-slim
.build/8.4.4-buster-slim : .build
	docker build -t phadej/ghc:8.4.4-buster-slim 8.4.4/buster/slim
	touch .build/8.4.4-buster-slim
.build/8.4-buster-slim : .build
	docker build -t phadej/ghc:8.4-buster-slim 8.4/buster/slim
	touch .build/8.4-buster-slim
.build/8.2.2-buster-slim : .build
	docker build -t phadej/ghc:8.2.2-buster-slim 8.2.2/buster/slim
	touch .build/8.2.2-buster-slim
.build/8.2-buster-slim : .build
	docker build -t phadej/ghc:8.2-buster-slim 8.2/buster/slim
	touch .build/8.2-buster-slim
.build/8.0.2-buster-slim : .build
	docker build -t phadej/ghc:8.0.2-buster-slim 8.0.2/buster/slim
	touch .build/8.0.2-buster-slim
.build/8.0-buster-slim : .build
	docker build -t phadej/ghc:8.0-buster-slim 8.0/buster/slim
	touch .build/8.0-buster-slim
.build/7.10.3-buster-slim : .build
	docker build -t phadej/ghc:7.10.3-buster-slim 7.10.3/buster/slim
	touch .build/7.10.3-buster-slim
.build/7.10-buster-slim : .build
	docker build -t phadej/ghc:7.10-buster-slim 7.10/buster/slim
	touch .build/7.10-buster-slim
.build/7.8.4-buster-slim : .build
	docker build -t phadej/ghc:7.8.4-buster-slim 7.8.4/buster/slim
	touch .build/7.8.4-buster-slim
.build/7.8-buster-slim : .build
	docker build -t phadej/ghc:7.8-buster-slim 7.8/buster/slim
	touch .build/7.8-buster-slim
.build/7.6.3-buster-slim : .build
	docker build -t phadej/ghc:7.6.3-buster-slim 7.6.3/buster/slim
	touch .build/7.6.3-buster-slim
.build/7.6-buster-slim : .build
	docker build -t phadej/ghc:7.6-buster-slim 7.6/buster/slim
	touch .build/7.6-buster-slim
.build/8.10.2-buster : .build
	docker build -t phadej/ghc:8.10.2-buster 8.10.2/buster
	touch .build/8.10.2-buster
.build/8.10-buster : .build
	docker build -t phadej/ghc:8.10-buster 8.10/buster
	touch .build/8.10-buster
.build/8.8.4-buster : .build
	docker build -t phadej/ghc:8.8.4-buster 8.8.4/buster
	touch .build/8.8.4-buster
.build/8.8-buster : .build
	docker build -t phadej/ghc:8.8-buster 8.8/buster
	touch .build/8.8-buster
.build/8.6.5-buster : .build
	docker build -t phadej/ghc:8.6.5-buster 8.6.5/buster
	touch .build/8.6.5-buster
.build/8.6-buster : .build
	docker build -t phadej/ghc:8.6-buster 8.6/buster
	touch .build/8.6-buster
.build/8.4.4-buster : .build
	docker build -t phadej/ghc:8.4.4-buster 8.4.4/buster
	touch .build/8.4.4-buster
.build/8.4-buster : .build
	docker build -t phadej/ghc:8.4-buster 8.4/buster
	touch .build/8.4-buster
.build/8.2.2-buster : .build
	docker build -t phadej/ghc:8.2.2-buster 8.2.2/buster
	touch .build/8.2.2-buster
.build/8.2-buster : .build
	docker build -t phadej/ghc:8.2-buster 8.2/buster
	touch .build/8.2-buster
.build/8.0.2-buster : .build
	docker build -t phadej/ghc:8.0.2-buster 8.0.2/buster
	touch .build/8.0.2-buster
.build/8.0-buster : .build
	docker build -t phadej/ghc:8.0-buster 8.0/buster
	touch .build/8.0-buster
.build/7.10.3-buster : .build
	docker build -t phadej/ghc:7.10.3-buster 7.10.3/buster
	touch .build/7.10.3-buster
.build/7.10-buster : .build
	docker build -t phadej/ghc:7.10-buster 7.10/buster
	touch .build/7.10-buster
.build/7.8.4-buster : .build
	docker build -t phadej/ghc:7.8.4-buster 7.8.4/buster
	touch .build/7.8.4-buster
.build/7.8-buster : .build
	docker build -t phadej/ghc:7.8-buster 7.8/buster
	touch .build/7.8-buster
.build/7.6.3-buster : .build
	docker build -t phadej/ghc:7.6.3-buster 7.6.3/buster
	touch .build/7.6.3-buster
.build/7.6-buster : .build
	docker build -t phadej/ghc:7.6-buster 7.6/buster
	touch .build/7.6-buster
.build/8.10.2-xenial-slim : .build
	docker build -t phadej/ghc:8.10.2-xenial-slim 8.10.2/xenial/slim
	touch .build/8.10.2-xenial-slim
.build/8.10-xenial-slim : .build
	docker build -t phadej/ghc:8.10-xenial-slim 8.10/xenial/slim
	touch .build/8.10-xenial-slim
.build/8.8.4-xenial-slim : .build
	docker build -t phadej/ghc:8.8.4-xenial-slim 8.8.4/xenial/slim
	touch .build/8.8.4-xenial-slim
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
.build/8.10.2-xenial : .build
	docker build -t phadej/ghc:8.10.2-xenial 8.10.2/xenial
	touch .build/8.10.2-xenial
.build/8.10-xenial : .build
	docker build -t phadej/ghc:8.10-xenial 8.10/xenial
	touch .build/8.10-xenial
.build/8.8.4-xenial : .build
	docker build -t phadej/ghc:8.8.4-xenial 8.8.4/xenial
	touch .build/8.8.4-xenial
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
.build/8.10.2-bionic-slim : .build
	docker build -t phadej/ghc:8.10.2-bionic-slim 8.10.2/bionic/slim
	touch .build/8.10.2-bionic-slim
.build/8.10-bionic-slim : .build
	docker build -t phadej/ghc:8.10-bionic-slim 8.10/bionic/slim
	touch .build/8.10-bionic-slim
.build/8.8.4-bionic-slim : .build
	docker build -t phadej/ghc:8.8.4-bionic-slim 8.8.4/bionic/slim
	touch .build/8.8.4-bionic-slim
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
.build/7.4.2-bionic-slim : .build
	docker build -t phadej/ghc:7.4.2-bionic-slim 7.4.2/bionic/slim
	touch .build/7.4.2-bionic-slim
.build/7.4-bionic-slim : .build
	docker build -t phadej/ghc:7.4-bionic-slim 7.4/bionic/slim
	touch .build/7.4-bionic-slim
.build/7.2.2-bionic-slim : .build
	docker build -t phadej/ghc:7.2.2-bionic-slim 7.2.2/bionic/slim
	touch .build/7.2.2-bionic-slim
.build/7.2-bionic-slim : .build
	docker build -t phadej/ghc:7.2-bionic-slim 7.2/bionic/slim
	touch .build/7.2-bionic-slim
.build/7.0.4-bionic-slim : .build
	docker build -t phadej/ghc:7.0.4-bionic-slim 7.0.4/bionic/slim
	touch .build/7.0.4-bionic-slim
.build/7.0-bionic-slim : .build
	docker build -t phadej/ghc:7.0-bionic-slim 7.0/bionic/slim
	touch .build/7.0-bionic-slim
.build/8.10.2-bionic : .build
	docker build -t phadej/ghc:8.10.2-bionic 8.10.2/bionic
	touch .build/8.10.2-bionic
.build/8.10-bionic : .build
	docker build -t phadej/ghc:8.10-bionic 8.10/bionic
	touch .build/8.10-bionic
.build/8.8.4-bionic : .build
	docker build -t phadej/ghc:8.8.4-bionic 8.8.4/bionic
	touch .build/8.8.4-bionic
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
.build/7.4.2-bionic : .build
	docker build -t phadej/ghc:7.4.2-bionic 7.4.2/bionic
	touch .build/7.4.2-bionic
.build/7.4-bionic : .build
	docker build -t phadej/ghc:7.4-bionic 7.4/bionic
	touch .build/7.4-bionic
.build/7.2.2-bionic : .build
	docker build -t phadej/ghc:7.2.2-bionic 7.2.2/bionic
	touch .build/7.2.2-bionic
.build/7.2-bionic : .build
	docker build -t phadej/ghc:7.2-bionic 7.2/bionic
	touch .build/7.2-bionic
.build/7.0.4-bionic : .build
	docker build -t phadej/ghc:7.0.4-bionic 7.0.4/bionic
	touch .build/7.0.4-bionic
.build/7.0-bionic : .build
	docker build -t phadej/ghc:7.0-bionic 7.0/bionic
	touch .build/7.0-bionic
.build/8.10.2-focal-slim : .build
	docker build -t phadej/ghc:8.10.2-focal-slim 8.10.2/focal/slim
	touch .build/8.10.2-focal-slim
.build/8.10-focal-slim : .build
	docker build -t phadej/ghc:8.10-focal-slim 8.10/focal/slim
	touch .build/8.10-focal-slim
.build/8.8.4-focal-slim : .build
	docker build -t phadej/ghc:8.8.4-focal-slim 8.8.4/focal/slim
	touch .build/8.8.4-focal-slim
.build/8.8-focal-slim : .build
	docker build -t phadej/ghc:8.8-focal-slim 8.8/focal/slim
	touch .build/8.8-focal-slim
.build/8.6.5-focal-slim : .build
	docker build -t phadej/ghc:8.6.5-focal-slim 8.6.5/focal/slim
	touch .build/8.6.5-focal-slim
.build/8.6-focal-slim : .build
	docker build -t phadej/ghc:8.6-focal-slim 8.6/focal/slim
	touch .build/8.6-focal-slim
.build/8.4.4-focal-slim : .build
	docker build -t phadej/ghc:8.4.4-focal-slim 8.4.4/focal/slim
	touch .build/8.4.4-focal-slim
.build/8.4-focal-slim : .build
	docker build -t phadej/ghc:8.4-focal-slim 8.4/focal/slim
	touch .build/8.4-focal-slim
.build/8.2.2-focal-slim : .build
	docker build -t phadej/ghc:8.2.2-focal-slim 8.2.2/focal/slim
	touch .build/8.2.2-focal-slim
.build/8.2-focal-slim : .build
	docker build -t phadej/ghc:8.2-focal-slim 8.2/focal/slim
	touch .build/8.2-focal-slim
.build/8.0.2-focal-slim : .build
	docker build -t phadej/ghc:8.0.2-focal-slim 8.0.2/focal/slim
	touch .build/8.0.2-focal-slim
.build/8.0-focal-slim : .build
	docker build -t phadej/ghc:8.0-focal-slim 8.0/focal/slim
	touch .build/8.0-focal-slim
.build/8.10.2-focal : .build
	docker build -t phadej/ghc:8.10.2-focal 8.10.2/focal
	touch .build/8.10.2-focal
.build/8.10-focal : .build
	docker build -t phadej/ghc:8.10-focal 8.10/focal
	touch .build/8.10-focal
.build/8.8.4-focal : .build
	docker build -t phadej/ghc:8.8.4-focal 8.8.4/focal
	touch .build/8.8.4-focal
.build/8.8-focal : .build
	docker build -t phadej/ghc:8.8-focal 8.8/focal
	touch .build/8.8-focal
.build/8.6.5-focal : .build
	docker build -t phadej/ghc:8.6.5-focal 8.6.5/focal
	touch .build/8.6.5-focal
.build/8.6-focal : .build
	docker build -t phadej/ghc:8.6-focal 8.6/focal
	touch .build/8.6-focal
.build/8.4.4-focal : .build
	docker build -t phadej/ghc:8.4.4-focal 8.4.4/focal
	touch .build/8.4.4-focal
.build/8.4-focal : .build
	docker build -t phadej/ghc:8.4-focal 8.4/focal
	touch .build/8.4-focal
.build/8.2.2-focal : .build
	docker build -t phadej/ghc:8.2.2-focal 8.2.2/focal
	touch .build/8.2.2-focal
.build/8.2-focal : .build
	docker build -t phadej/ghc:8.2-focal 8.2/focal
	touch .build/8.2-focal
.build/8.0.2-focal : .build
	docker build -t phadej/ghc:8.0.2-focal 8.0.2/focal
	touch .build/8.0.2-focal
.build/8.0-focal : .build
	docker build -t phadej/ghc:8.0-focal 8.0/focal
	touch .build/8.0-focal

.build :
	mkdir .build
