#
# Cookbook Name:: workstation_cookbook 
# Recipes Name:: workstation_setup
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

include_recipe 'workstation_cookbook::system_settings'
include_recipe 'workstation_cookbook::ruby_gems'
include_recipe 'workstation_cookbook::version_control_systems'
include_recipe 'workstation_cookbook::packages'
include_recipe 'workstation_cookbook::ssh_config'
include_recipe 'workstation_cookbook::workspace'
