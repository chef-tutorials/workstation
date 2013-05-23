#
# Cookbook Name:: node_cookbook 
# Recipes Name:: solo_configuration
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

directory "/root/.ssh" do
  recursive true
end

cookbook_file "/root/.ssh/authorized_keys" do
  mode "600"
end

