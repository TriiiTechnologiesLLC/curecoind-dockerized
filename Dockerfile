FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo git libboost-all-dev libqrencode-dev libssl-dev libdb5.3-dev libdb5.3++-dev libminiupnpc-dev dh-make build-essential && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

RUN cd /srv/ && git clone https://github.com/cygnusxi/CurecoinSource.git && cd CurecoinSource/src && make -f makefile.unix
WORKDIR /srv/CurecoinSource/src
ADD run.sh ./run.sh

# Any subsequent RUN, CMD, or ENTRYPOINT commands will execute as 'appuser'
ENTRYPOINT ["bash", "./run.sh"]
