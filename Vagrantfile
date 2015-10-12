# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "RAC-development-Vagrant"

   # The url from where the 'config.vm.box' box will be fetched if it
   # doesn't already exist on the user's system.

  # config.vm.box_url = "https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie"
  config.vm.box_url = "https://github.com/jose-lpa/packer-debian_7.6.0/releases/download/1.0/packer_virtualbox-iso_virtualbox.box"
  
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

end