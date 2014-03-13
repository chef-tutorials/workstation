# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define :chef_node do |chef_node|
    chef_node.vm.box       = "nairobi_base"
    chef_node.vm.host_name = "chef-node"
#sudo apt-get update
#sudo apt-get install build-essential
#sudo gem install minitest-chef-handler

    chef_node.vm.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1"]
    chef_node.vm.network :hostonly, "10.10.10.5"
    chef_node.vm.provision :chef_solo do |chef|
      chef.cookbooks_path  = ["cookbooks", "/Users/Carlos/Documents/configmgmt-tutorial/cookbooks"]
#      chef.add_recipe       "flask"
#      chef.add_recipe       "flaskr"
#      chef.add_recipe       "node_cookbook::node_setup"
#      chef.add_recipe       "minitest-handler-solo"
#      chef.add_recipe       "minitest-handler"
    end
  end

  config.vm.define :workstation do |workstation|
    workstation.vm.box       = "workstation_cooked"
    workstation.vm.boot_mode = :gui
    workstation.vm.host_name = "workstation"
    workstation.vm.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "1"]
    workstation.vm.network :hostonly, "10.10.10.3"
    workstation.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ["cookbooks"]
      #chef.add_recipe       "workstation_cookbook::workstation_setup"
      #chef.add_recipe       "node_cookbook::solo_configuration"
      #chef.add_recipe       "minitest-handler-solo"
    end
  end
end

