# -*- mode: ruby -*-

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos-6.4-puppet"

  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"

  config.vm.define :app do |app_config|
    app_config.vm.hostname = 'app.local'
    app_config.vm.network :private_network, ip: '192.168.0.100'
  end

  config.vm.define :db do |db_config|
    db_config.vm.hostname = 'db.local'
    db_config.vm.network :private_network, ip: '192.168.0.101'
  end
end









