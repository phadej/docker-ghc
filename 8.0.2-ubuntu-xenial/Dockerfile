FROM ubuntu:xenial
MAINTAINER Oleg Grenrus <oleg.grenrus@iki.fi>

# hvr-ppa
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends install \
    software-properties-common \
    python-software-properties \
  && apt-key adv --keyserver hkps.pool.sks-keyservers.net --recv-key 9BEFB442 \
  && apt-add-repository -y 'deb http://download.fpcomplete.com/ubuntu/precise stable main' \
  && apt-add-repository -y "ppa:hvr/ghc" \
  && rm -rf /var/lib/apt/lists/*

# Dependencies
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends install \
    cabal-install-2.0 \
    cabal-install-head \
    ghc-8.0.2 \
    alex-3.1.7 \
    happy-1.19.5 \
    stack \
    git \
  && rm -rf /var/lib/apt/lists/*

ENV PATH=$HOME/.local/bin:/opt/ghc/8.0.2/bin:/opt/cabal/2.0/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:$PATH

# Done
WORKDIR /root
CMD ["ghci"]
