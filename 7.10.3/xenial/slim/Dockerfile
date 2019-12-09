## Dockerfile for a haskell environment
## TAG 7.10.3-xenial-slim
##
FROM       ubuntu:xenial

## ensure locale is set during build
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git software-properties-common && \
    apt-add-repository -y "ppa:hvr/ghc" && \
    apt-get update && \
    apt-get install -y --no-install-recommends ghc-7.10.3 cabal-install-3.0 \
        zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make && \
    rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz

ENV PATH /root/.cabal/bin:/root/.local/bin:/opt/cabal/3.0/bin:/opt/ghc/7.10.3/bin:$PATH

## run ghci by default unless a command is specified
CMD ["ghci"]
