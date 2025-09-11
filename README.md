# curecoind-dockerized
Dockerized version of Curecoind (linux, ubuntu 22) (https://github.com/cygnusxi/CurecoinSource)

default: (uses standard file locations etc)

usage:
git clone https://github.com/TriiiTechnologiesLLC/curecoind-dockerized.git

cd curecoind-dockerized

docker build . --tag local:curecoind

docker run --restart always --name curecoind -d -p 9911:9911 -v /root/.curecoin/:/root/.curecoin/ local:curecoind

NOTE: it is possible to set the curecoin dir locally other than if it was ran previously eg:

docker run --restart always --name curecoind -d -p 9911:9911 -v /var/path/to/my/.curecoin/:/root/.curecoin/ local:curecoind

to interact with curecoind

docker exec -it curecoind ./curecoind getinfo

or for an interactive shell

docker exec -it curecoind bash

from there you can reach curecoind with:

./curecoind getinfo

For first time users you will need to create your config file in the specified .curecoin folder

docker logs curecoind

will provide a generated example of what to save for an initial configuration
