#!/bin/bash

sudo cp /vagrant/puppetMaster/hosts /etc/hosts
sudo apt-get update -y
sudo wget https://apt.puppet.com/puppet7-release-jammy.deb
sudo dpkg -i puppet7-release-jammy.deb
sudo apt-get update -y
sudo apt-get install puppetserver -y

sudo cp /vagrant/puppetMaster/puppet.conf /etc/puppetlabs/puppet/puppet.conf
sudo rm -r /etc/puppetlabs/puppet/ssl/
sudo cp /vagrant/puppetMaster/puppetServer  /etc/default/puppetserver
sudo /opt/puppetlabs/bin/puppetserver ca setup --config /etc/puppetlabs/puppet/puppet.conf

# COMANDOS PARA EJECUTAR DURANTE LA DEMO
#sudo systemctl start puppetserver
#sudo systemctl enable puppetserver
#sudo systemctl status puppetserver
#sudo /opt/puppetlabs/bin/puppetserver ca list --all
#sudo /opt/puppetlabs/bin/puppetserver ca sign --all

# LOGS del servidor
#sudo ls /opt/puppetlabs/server/data/puppetserver/reports/puppetclient/