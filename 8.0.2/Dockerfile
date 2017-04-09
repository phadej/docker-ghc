FROM debian:jessie
MAINTAINER Oleg Grenrus <oleg.grenrus@iki.fi>

ENV GHCVER=8.0.2
ENV GHC_TGZ="ghc-8.0.2-x86_64-deb8-linux.tar.xz"
ENV CABAL_VERSION="1.24.0.2"
ENV CABAL_TGZ="cabal-install-1.24.0.2.tar.gz"

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

RUN curl --silent -O https://downloads.haskell.org/~ghc/$GHCVER/$GHC_TGZ \
  && echo "5ee68290db00ca0b79d57bc3a5bdce470de9ce9da0b098a7ce6c504605856c8f $GHC_TGZ" | sha256sum -c - \
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

RUN curl --silent -O https://www.haskell.org/cabal/release/cabal-install-$CABAL_VERSION/$CABAL_TGZ \
  && tar --strip-component=1 -xzf $CABAL_TGZ \
  && rm $CABAL_TGZ \
  && /usr/src/cabal/bootstrap.sh \
  && cp /root/.cabal/bin/cabal /opt/ghc/bin \
  && for pkg in `ghc-pkg --user list  --simple-output`; do ghc-pkg unregister --force $pkg; done \
  && rm -rf /root/.cabal \
  && rm -rf /usr/src/cabal \
  && cabal --version

# Done
WORKDIR /root
CMD ["ghci"]

