FROM debian:wheezy
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
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

# GHC
RUN mkdir -p /usr/src/ghc
WORKDIR /usr/src/ghc

RUN curl --silent -O http://downloads.haskell.org/~ghc/7.10.1-rc2/ghc-7.10.0.20150123-x86_64-unknown-linux-deb7.tar.bz2 \
  && echo 'fd1e16e897b310f443460510f826c56c63d03a11a0581e2113de9da86086a2a0  ghc-7.10.0.20150123-x86_64-unknown-linux-deb7.tar.bz2' | sha256sum -c - \
  && tar --strip-components=1 -xjf ghc-7.10.0.20150123-x86_64-unknown-linux-deb7.tar.bz2 \
  && rm ghc-7.10.0.20150123-x86_64-unknown-linux-deb7.tar.bz2 \
  && ./configure --prefix=/opt/ghc \
  && make install \
  && rm -rf /usr/src/ghc \
  && /opt/ghc/bin/ghc --version

ENV PATH /opt/ghc/bin:$PATH

# Cabal
RUN mkdir -p /usr/src/cabal
WORKDIR /usr/src/cabal

COPY bootstrap.sh.patch /usr/src/cabal/bootstrap.sh.patch

RUN curl --silent -O https://www.haskell.org/cabal/release/cabal-install-1.18.0.8/cabal-install-1.18.0.8.tar.gz \
  && echo '914fbde460d5769868002b8652568b53e9ec4545ed584a3e19494311fddba7fb  cabal-install-1.18.0.8.tar.gz' | sha256sum -c - \
  && tar --strip-component=1 -xzf cabal-install-1.18.0.8.tar.gz \
  && rm cabal-install-1.18.0.8.tar.gz \
  && patch -u bootstrap.sh bootstrap.sh.patch \
  && PREFIX=/opt/ghc /usr/src/cabal/bootstrap.sh --global \
  && rm -rf /usr/src/cabal \
  && cabal --version

# Done
WORKDIR /root
CMD ["ghci"]

