# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "minikube" do |minikube|
      minikube.vm.box = "geerlingguy/centos7"
      minikube.vm.network "private_network", type: "static", ip: "192.168.99.10"
      minikube.vm.hostname = "minikube"
      minikube.vm.provider "virtualbox" do |v|
        v.name = "minikube"
        v.memory = 4096
        v.cpus = 2
      end
      minikube.vm.provision :shell do |shell|
        shell.path = "install_minikube.sh"
        shell.args = ["master", "192.168.99.10"]
      end
    end
end
