#!/bin/bash

sudo cp /vagrant/puppetClient/hosts /etc/hosts
sudo apt-get update -y
sudo wget https://apt.puppet.com/puppet7-release-jammy.deb
sudo dpkg -i puppet7-release-jammy.deb
sudo apt-get update -y
sudo apt-get install puppet-agent -y
sudo cp /vagrant/puppetClient/puppet.conf /etc/puppetlabs/puppet/puppet.conf

# COMANDOS PARA EJECUTAR DURANTE LA DEMO
#sudo systemctl start puppet
#sudo systemctl enable puppet
#sudo systemctl status puppet

#sudo /opt/puppetlabs/bin/puppet agent --test

# LOGS del agente
sudo cat /opt/puppetlabs/puppet/public/last_run_summary.yaml