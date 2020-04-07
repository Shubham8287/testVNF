FROM centos:8

RUN yum update -y 
RUN yum install -y wget unzip
RUN wget https://releases.hashicorp.com/packer/1.5.4/packer_1.5.4_linux_amd64.zip &&\
unzip packer_1.5.4_linux_amd64.zip &&\
mv packer /usr/local/bin/. 

RUN yum -y install openssh-clients
RUN  mkdir /.ssh && ssh-keygen -q -t rsa -N '' -f /.ssh/id_rsa