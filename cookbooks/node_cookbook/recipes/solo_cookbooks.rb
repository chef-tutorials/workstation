#
# Cookbook Name:: node_cookbook 
# Recipes Name:: solo_cookbooks
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

directory "/var/chef/cookbooks" do
  recursive true
end

git "/var/chef/cookbooks/chef_handler" do
  repository "https://github.com/chef-tutorials/chef_handler.git"
end

git "/var/chef/cookbooks/minitest-handler-solo" do
  repository "https://github.com/chef-tutorials/minitest-handler-solo.git"
end
