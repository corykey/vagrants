# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "C++ Dev Vagrant"

   # The url from where the 'config.vm.box' box will be fetched if it
   # doesn't already exist on the user's system.

  config.vm.box_url = "https://github.com/kraksoft/vagrant-box-debian/releases/download/7.8.0/debian-7.8.0-amd64.box"
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "1", "--ioapic", "on"]
  end

  config.vm.provision "shell", path: "bootstrap.sh"

end