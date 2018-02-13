all : \
    8.2.2-ubuntu/Dockerfile \
    8.2.1-ubuntu/Dockerfile \
    7.10.3-ubuntu/Dockerfile \
    7.10.2-ubuntu/Dockerfile \
    7.8.4-ubuntu/Dockerfile \
    7.6.3-ubuntu/Dockerfile \
    7.4.2-ubuntu/Dockerfile

%-ubuntu/Dockerfile : gen/hvr-ppa.dockerfile
	cabal new-run gen -- hvr-ppa --template gen/hvr-ppa.dockerfile --with-compiler $* --output $@
