FROM debian:jessie
MAINTAINER Oleg Grenrus <oleg.grenrus@iki.fi>

# Dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    bzip2 \
    ca-certificates \
    curl \
    gcc \
    libc6-dev \
    libgmp-dev \
    libgmp10 \
    make \
    patch \
    xz-utils \
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

# GHC
RUN mkdir -p /usr/src/ghc
WORKDIR /usr/src/ghc

ENV GHCVER="8.4.2"
ENV GHC_TGZ="ghc-8.4.2-x86_64-deb8-linux.tar.xz"

RUN curl --silent -O https://downloads.haskell.org/~ghc/$GHCVER/$GHC_TGZ \
  && echo "246f66eb56f4ad0f1c7755502cfc8f9972f2d067dede17e151f6f479c1f76fbd $GHC_TGZ" | sha256sum -c - \
  && tar --strip-components=1 -xf $GHC_TGZ \
  && rm $GHC_TGZ \
  && ./configure --prefix=/opt/ghc \
  && make install \
  && rm -rf /usr/src/ghc \
  && /opt/ghc/bin/ghc --version

ENV PATH /opt/ghc/bin:$PATH

# Cabal
RUN mkdir -p /usr/src/cabal
WORKDIR /usr/src/cabal

ENV CABAL_VERSION="2.2.0.0"
ENV CABAL_TGZ="cabal-install-2.2.0.0-x86_64-unknown-linux.tar.gz"

RUN curl --silent -O https://www.haskell.org/cabal/release/cabal-install-$CABAL_VERSION/$CABAL_TGZ \
  && tar -xzf $CABAL_TGZ \
  && rm $CABAL_TGZ \
  && cp /usr/src/cabal/cabal /opt/ghc/bin \
  && rm -rf /usr/src/cabal \
  && cabal --version

# Done
WORKDIR /root
CMD ["ghci"]
