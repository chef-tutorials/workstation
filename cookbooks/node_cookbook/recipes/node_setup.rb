#
# Cookbook Name:: node_cookbook 
# Recipes Name:: node_setup
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

include_recipe 'node_cookbook::solo_configuration'
include_recipe 'node_cookbook::apt_get_update'
