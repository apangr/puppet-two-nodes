# How to Install Puppet on Ubuntu 20.04
# https://phoenixnap.com/kb/install-puppet-ubuntu

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-22.04"



  config.vm.define "puppetclient" do |puppetclient|
  
    puppetclient.vm.network "private_network", ip: "172.17.177.11"
    puppetclient.vm.hostname = "puppetclient" 
    puppetclient.vm.provider "virtualbox" do |vb|
        vb.name = "puppetclient"
        vb.memory = "1024"
    end
	
  end

  config.vm.define 'puppetmaster' do |puppetmaster|
   
    puppetmaster.vm.network "private_network", ip: "172.17.177.21"
    puppetmaster.vm.hostname = "puppetmaster"
    puppetmaster.vm.provider "virtualbox" do |vb|
      vb.name = "puppetmaster"
      vb.memory = "1024"
  end

  end
end
