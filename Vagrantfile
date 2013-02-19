# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64_ruby193"
  config.vm.box_url = "http://aussie.lunix.com.au/files/vagrantboxes/precise64_ruby193.box"
  config.vm.host_name = "log.example.com"
  config.vm.forward_port 3000, 3000
  #config.vm.network :hostonly, "172.31.255.2"
  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "manifests/"
    puppet.manifest_file  = "site.pp"
  end
end
