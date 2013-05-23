#
# Cookbook Name:: node_cookbook 
# Recipes Name:: version_control_systems
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

%w{ git }.each do |version_control_system|
  package version_control_system
end

