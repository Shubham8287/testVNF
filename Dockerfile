FROM centos:latest

RUN yum update -y && yum install -y epel-release

RUN  yum install -y snapd && systemctl enable snapd 
RUN systemctl enable --now snapd.socket && snap install packer-io

CMD []