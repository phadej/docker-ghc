FROM ubuntu:precise
MAINTAINER Oleg Grenrus <oleg.grenrus@iki.fi>

# hvr-ppa
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends --force-yes install \
    software-properties-common \
    python-software-properties \
  && apt-add-repository -y "ppa:hvr/ghc" \
  && rm -rf /var/lib/apt/lists/*

# Environment
ENV CABALVER=1.16
ENV GHCVER=7.4.2
ENV ALEXVER=3.1.4
ENV HAPPYVER=1.19.5

# Dependencies
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends --force-yes install \
    cabal-install-$CABALVER \
    ghc-$GHCVER \
    alex-$ALEXVER \
    happy-$HAPPYVER \
  && rm -rf /var/lib/apt/lists/*

ENV PATH=/opt/ghc/$GHCVER/bin:/opt/cabal/$CABALVER/bin:/opt/happy/$HAPPYVER/bin:/opt/alex/$ALEXVER/bin:$PATH

# Done
WORKDIR /root
CMD ["ghci"]
