FROM ubuntu:xenial
MAINTAINER Oleg Grenrus <oleg.grenrus@iki.fi>

# hvr-ppa
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends --force-yes install \
    software-properties-common \
    python-software-properties \
  && apt-key adv --keyserver hkps.pool.sks-keyservers.net --recv-key 9BEFB442 \
  && apt-add-repository -y 'deb http://download.fpcomplete.com/ubuntu/precise stable main' \
  && apt-add-repository -y "ppa:hvr/ghc" \
  && rm -rf /var/lib/apt/lists/*

# Environment
ENV CABALVER=1.24
ENV GHCVER=8.0.2
ENV ALEXVER=3.1.7
ENV HAPPYVER=1.19.5

# Dependencies
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends --force-yes install \
    cabal-install-$CABALVER \
    cabal-install-head \
    ghc-$GHCVER \
    alex-$ALEXVER \
    happy-$HAPPYVER \
    stack \
    git \
  && rm -rf /var/lib/apt/lists/*

ENV PATH=$HOME/.local/bin:/opt/ghc/$GHCVER/bin:/opt/cabal/$CABALVER/bin:/opt/happy/$HAPPYVER/bin:/opt/alex/$ALEXVER/bin:$PATH

# Done
WORKDIR /root
CMD ["ghci"]
