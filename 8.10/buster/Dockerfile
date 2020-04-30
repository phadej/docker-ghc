## Dockerfile for a haskell environment
## TAG 8.10-buster
##
FROM       buildpack-deps:buster

## ensure locale is set during build
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git && \
    echo 'deb http://downloads.haskell.org/debian buster main' > /etc/apt/sources.list.d/ghc.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 && \
    apt-get update && \
    apt-get install -y --no-install-recommends ghc-8.10.1 cabal-install-3.2 \
        ghc-8.10.1-prof libtinfo-dev && \
    curl -fSL https://github.com/commercialhaskell/stack/releases/download/v2.3.1/stack-2.3.1-linux-x86_64.tar.gz -o stack.tar.gz && \
    echo "b753cd21d446aea16a221326ec686e3acdf1b146c714a77b5d27fd855475554d  stack.tar.gz" | sha256sum -c - && \
    tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 && \
    /usr/local/bin/stack config set system-ghc --global true && \
    /usr/local/bin/stack config set install-ghc --global false && \
    rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz

ENV PATH /root/.cabal/bin:/root/.local/bin:/opt/cabal/3.2/bin:/opt/ghc/8.10.1/bin:$PATH

## run ghci by default unless a command is specified
CMD ["ghci"]
