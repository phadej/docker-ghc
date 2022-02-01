## Dockerfile for a haskell environment
## TAG 9.0-focal
##
FROM       buildpack-deps:focal

## ensure locale is set during build
ENV LANG C.UTF-8

## for apt to be noninteractive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update && \
    apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git software-properties-common && \
    apt-add-repository -y "ppa:hvr/ghc" && \
    apt-get update && \
    apt-get install -y --no-install-recommends ghc-9.0.2 cabal-install-3.6 \
        ghc-9.0.2-prof libtinfo-dev && \
    rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz

ENV PATH /root/.cabal/bin:/root/.local/bin:/opt/cabal/3.6/bin:/opt/ghc/9.0.2/bin:$PATH

## run ghci by default unless a command is specified
CMD ["ghci"]