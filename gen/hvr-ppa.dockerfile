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
    cabal-install-{{cabalver}} \
    cabal-install-head \
    ghc-{{ghcver}} \
    alex-{{alexver}} \
    happy-{{happyver}} \
    stack \
    git \
  && rm -rf /var/lib/apt/lists/*

ENV PATH=$HOME/.local/bin:/opt/ghc/{{ghcver}}/bin:/opt/cabal/{{cabalver}}/bin:/opt/happy/{{happyver}}/bin:/opt/alex/{{alexver}}/bin:$PATH

# Done
WORKDIR /root
CMD ["ghci"]
