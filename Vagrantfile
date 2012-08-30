# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://www.lunix.com.au/files/vagrantboxes/precise64.box"
  config.vm.host_name = "log.example.com"
  config.vm.network :hostonly, "172.31.255.2"
  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "manifests/"
    puppet.manifest_file  = "site.pp"
  end
end
