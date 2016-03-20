# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "RAC-development-Vagrant"

   # The url from where the 'config.vm.box' box will be fetched if it
   # doesn't already exist on the user's system.

   # centos-7 config.vm.box_url = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box"
  config.vm.box_url = "https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2", "--ioapic", "on"]
  end

  config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.network :forwarded_port, guest: 80, host: 8000

  # MySQL port
  #config.vm.network :forwarded_port, guest: 3306, host: 3306

  # Elasticsearch node port
  #config.vm.network :forwarded_port, guest: 9200, host: 9200

  # Elasticsearch default Kibana port
  #config.vm.network :forwarded_port, guest: 5601, host: 5601

  # Rethink Client Port
  #config.vm.network :forwarded_port, guest: 28015, host: 28015

  # Rethink WebUI
  #config.vm.network :forwarded_port, guest: 8080, host: 8080

end
