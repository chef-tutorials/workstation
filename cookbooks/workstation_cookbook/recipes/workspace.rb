#
# Cookbook Name:: workstation_cookbook 
# Recipes Name:: workspace
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

directory "/home/vagrant/tutorials" do
  user "vagrant"
  group "vagrant"
end

git "/home/vagrant/tutorials/introduction" do
  repository "https://github.com/chef-tutorials/introduction.git"
  user "vagrant"
  group "vagrant"
end

directory "/home/vagrant/.chef" do
  user "vagrant"
  group "vagrant"
end

# Silence the warning sign with `knife cookbook test` command
file "/home/vagrant/.chef/knife.rb" do
  user "vagrant"
  group "vagrant"
end

file "/home/vagrant/Desktop/link_to_tutorials.desktop" do
  user "vagrant"
  group "vagrant"
  content "[Desktop Entry]\nEncoding=UTF-8\nName=link_to_tutorials.desktop\nType=Link\nURL=https://github.com/chef-tutorials\nIcon=text-html" 
end

