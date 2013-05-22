#
# Cookbook Name:: workstation_cookbook
# Recipe:: desktop
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
#

cookbook_file "/usr/share/backgrounds/warty-final-ubuntu.png" do
  user "vagrant"
  group "vagrant"
end

file "/home/vagrant/Desktop/link_to_tutorials.desktop" do
  user "vagrant"
  group "vagrant"
  content "[Desktop Entry]\nEncoding=UTF-8\nName=link_to_tutorials.desktop\nType=Link\nURL=https://github.com/chef-tutorials\nIcon=text-html" 
end

