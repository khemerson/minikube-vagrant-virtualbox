#!/bin/bash

yum update -y
yum -y
yum -y install nano git libvirt qemu-kvm virt-install virt-top libguestfs-tools bridge-utils
yum install socat -y
yum install -y conntrack
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker centos
systemctl start docker
systemctl enable docker
yum -y install wget
wget https://storage.googleapis.com/minikube/releases/v1.11.0/minikube-linux-amd64
chmod +x minikube-linux-amd64
mv minikube-linux-amd64 /usr/bin/minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.0/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/bin/
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
systemctl enable docker.service
systemctl start docker.service
