FROM ubuntu:18.04

RUN apt-get update && apt-get install software-properties-common --yes

RUN apt-get install -y ssh && apt-get install -y ansible

CMD []