# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ARTACK/debian-jessie"
  config.vm.box_url = "http://blackforestcrafting.de/boxes/debian-jessie.box"

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

  # Rethink WebUI or VueJS App
  #config.vm.network :forwarded_port, guest: 8080, host: 8080

end
