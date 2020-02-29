FROM phadej/ghc:8.0.2-ubuntu
MAINTAINER Oleg Grenrus <oleg.grenrus@iki.fi>

# Dependencies
RUN apt-get -yq update && apt-get -yq --no-install-suggests --no-install-recommends --force-yes install \
   autoconf \
   automake \
   autotools-dev \
   cabal-install-2.0 \
   curl \ 
   libtinfo-dev \
   nodejs \
  && rm -rf /var/lib/apt/lists/*

# Install node 6.11.3
# https://github.com/nodejs/docker-node/blob/17c50cb300581280805a4183524fbf57840f3a7e/6.11/Dockerfile

#ENV PATH=/opt/node/bin:$PATH
#
## gpg keys listed at https://github.com/nodejs/node#release-team
#RUN set -ex \
#  && for key in \
#    9554F04D7259F04124DE6B476D5A82AC7E37093B \
#    94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
#    FD3A5288F042B6850C66B31F09FE44734EB7990E \
#    71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
#    DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
#    B9AE9905FFD7803F25714661B63B535A4C206CA9 \
#    C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
#    56730D5401028683275BD23C23EFEFE93C4CFFFE \
#  ; do \
#    gpg --keyserver pgp.mit.edu --recv-keys "$key" || \
#    gpg --keyserver keyserver.pgp.com --recv-keys "$key" || \
#    gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ; \
#  done
#
#ENV NPM_CONFIG_LOGLEVEL info
#ENV NODE_VERSION 6.11.3
#
#RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" \
#  && case "${dpkgArch##*-}" in \
#    amd64) ARCH='x64';; \
#    ppc64el) ARCH='ppc64le';; \
#    s390x) ARCH='s390x';; \
#    arm64) ARCH='arm64';; \
#    armhf) ARCH='armv7l';; \
#    *) echo "unsupported architecture"; exit 1 ;; \
#  esac \
#  && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz" \
#  && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
#  && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc \
#  && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c - \
#  && mkdir -p /opt/node \
#  && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /opt/node/ --strip-components=1 \
#  && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt

#ENV YARN_VERSION 0.27.5
#
#RUN set -ex \
#  && for key in \
#    6A010C5166006599AA17F08146C2130DFD2497F5 \
#  ; do \
#    gpg --keyserver pgp.mit.edu --recv-keys "$key" || \
#    gpg --keyserver keyserver.pgp.com --recv-keys "$key" || \
#    gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ; \
#  done \
#  && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz" \
#  && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc" \
#  && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \
#  && mkdir -p /opt/yarn \
#  && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \
#  && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \
#  && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \
#  && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz

# Install GHCJS

WORKDIR /opt/src

RUN cabal update

RUN git clone https://github.com/ghcjs/ghcjs.git
WORKDIR /opt/src/ghcjs
RUN git checkout ghc-8.0
RUN cabal update
RUN cabal sandbox init 
RUN cabal install --only-dependencies
RUN cabal configure --prefix=/opt/ghcjs/head
RUN cabal install
