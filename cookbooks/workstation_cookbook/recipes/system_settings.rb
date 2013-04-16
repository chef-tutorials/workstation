#
# Cookbook Name:: workstation_cookbook 
# Recipes Name:: system_settings
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

execute "Turn off update-notifier" do
  command "sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/update-notifier.desktop"
  not_if "grep 'NoDisplay=false' /etc/xdg/autostart/update-notifier.desktop"
end
