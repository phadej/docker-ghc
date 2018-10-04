all : \
    8.6.1-ubuntu/Dockerfile \
    8.4.3-ubuntu/Dockerfile \
    8.2.2-ubuntu/Dockerfile \
    8.2.1-ubuntu/Dockerfile \
    8.0.2-ubuntu/Dockerfile \
    7.10.3-ubuntu/Dockerfile \
    7.10.2-ubuntu/Dockerfile \
    7.8.4-ubuntu/Dockerfile \
    7.6.3-ubuntu/Dockerfile \
    7.4.2-ubuntu/Dockerfile \
    \
    8.4.3-ubuntu-xenial/Dockerfile \
    8.2.2-ubuntu-xenial/Dockerfile \
    8.0.2-ubuntu-xenial/Dockerfile \
    \
    8.4.3-ubuntu-bionic/Dockerfile \
    8.2.2-ubuntu-bionic/Dockerfile \
    8.0.2-ubuntu-bionic/Dockerfile

%-ubuntu/Dockerfile : gen/hvr-ppa.dockerfile gen/src/Main.hs
	cabal new-run gen -- hvr-ppa --template gen/hvr-ppa.dockerfile --with-compiler $* --output $@ --codename xenial

%-ubuntu-xenial/Dockerfile : gen/hvr-ppa.dockerfile gen/src/Main.hs
	cabal new-run gen -- hvr-ppa --template gen/hvr-ppa.dockerfile --with-compiler $* --output $@ --codename xenial

%-ubuntu-bionic/Dockerfile : gen/hvr-ppa.dockerfile gen/src/Main.hs
	cabal new-run gen -- hvr-ppa --template gen/hvr-ppa.dockerfile --with-compiler $* --output $@ --codename bionic
