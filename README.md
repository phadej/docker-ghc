# GHC Docker image

[GHC](https://www.haskell.org/ghc/) + [cabal](https://www.haskell.org/cabal/) docker image.

## Supported tags and respective Dockerfile links

- [`7.10.2`, `7.10`, `latest` (7.10.2/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.10.2/Dockerfile)
- [`7.10.1` (7.10.1/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.10.1/Dockerfile)
- [`7.10.1-rc2` (7.10.1-rc2/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.10.1-rc2/Dockerfile)
- [`7.8.4`, `7.8` (7.8.4/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.8.4/Dockerfile)
- [`7.6.3`, `7.6` (7.6.3/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.6.3/Dockerfile)
- [`7.4.2`, `7.4` (7.4.2/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.4.2/Dockerfile)

### Ubuntu images

Using [packages by Herbert V. Riedel](https://launchpad.net/~hvr/+archive/ubuntu/ghc)

- [`7.10.2-ubuntu` (7.10.2-ubuntu/Dockerfile)](https://github.com/phadej/docker-ghc/blob/master/7.10.2-ubuntu/Dockerfile)

## What is GHC?

The [Glasgow Haskell Compiler](https://www.haskell.org/ghc/) is a state-of-the-art, open source compiler and interactive environment for the functional language Haskell.

![logo](https://raw.githubusercontent.com/phadej/docker-ghc/master/logo.png)

## Cabal versions:

The cabal-install 1.18.0.8 version (with dependencies from [stackage lts-1.8](http://www.stackage.org/snapshot/lts-1.8)) is used for 7.4, 7.6 and 7.8 branches.
The cabal-install 1.22.6.0 version (with default dependencies) is used for 7.10 branch.
