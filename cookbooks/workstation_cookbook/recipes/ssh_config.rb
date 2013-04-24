#
# Cookbook Name:: workstation_cookbook 
# Recipes Name:: ssh_config
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

home_directory = node["workstation_cookbook"]["home_directory"]

cookbook_file "#{home_directory}/.ssh/id_rsa" do
  source "insecure_private_key"
  mode "600"
  owner "vagrant"
  group "vagrant"
end

cookbook_file "#{home_directory}/.ssh/config" do
  source "config"
  mode "755"
  owner "vagrant"
  group "vagrant"
end
