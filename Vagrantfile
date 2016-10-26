# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'

settings = YAML.load_file 'config.yml'

Vagrant.configure("2") do |config|
 
  config.vm.box = "hashicorp/precise32"
  
  config.vm.hostname = settings['box']['hostname']
  
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true


  config.vm.network "private_network", ip: settings['box']['ip']
  config.vm.network :forwarded_port, guest: settings['box']['forwarded_ports']['guest'], host: settings['box']['forwarded_ports']['host']
  #node.hostmanager.aliases = %w(settings['box']['hostname'] example-box-alias)

  config.vm.provision :shell, path: "provision/nodejs.sh"
  config.vm.provision :shell, path: "provision/nginx.sh"
  config.vm.provision :shell, path: "provision/php.sh"


  config.vm.synced_folder "app/", "/var/www"

  if settings['box']['backendNodeJS']
    config.vm.provision :shell, path: "provision/server/node.sh"
  else
    config.vm.provision :shell, path: "provision/server/php.sh"
  end
 
end
