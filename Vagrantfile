# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "mhesac/vagrant-jekyll"

  config.vbguest.auto_update = false

  config.vm.network "private_network", ip: "192.168.33.10"

  # config.vm.provider "virtualbox" do |vb|
  #   vb.memory = "1024"
  # end

  # rsync is way way faster than native synced folders!!!
  # But you have to run `vagrant rsync-auto` in the host vm in another window from vagrant up
  # config.vm.synced_folder ".", "/home/vagrant/jekyll",
  #   type: "rsync",
  #   rsync__exclude: [".git/", ".vagrant/"],
  #   rsync__verbose: true

  config.vm.synced_folder ".", "/home/vagrant/jekyll"

end
