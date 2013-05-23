#
# Cookbook Name:: workstation_cookbook 
# Recipes Name:: ruby_gems
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

%w{ foodcritic }.each do |ruby_gem|
  gem_package ruby_gem
end

