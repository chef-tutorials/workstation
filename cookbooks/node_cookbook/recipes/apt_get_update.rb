#
# Cookbook Name:: node_cookbook 
# Recipes Name:: apt_get_update
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end
