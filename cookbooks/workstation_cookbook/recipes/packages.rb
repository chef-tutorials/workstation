#
# Cookbook Name:: workstation_cookbook 
# Recipes Name:: packages
#
# Copyright (C) 2013 chef-tutorial
# 
# Some rights reserved - Redistribute
# 

package 'vim'
package 'tmux'

if platform_family?("debian")
  execute "add-apt-repository ppa:webupd8team/sublime-text-2 -y" do
    not_if "ls /etc/apt/sources.list.d | grep webupd8team"
    notifies :run, "execute[apt-get update]", :immediately
  end

  execute "apt-get update" do
    action :nothing
  end
  
  execute "apt-get install sublime-text -y" do
    not_if "which sublime-text"
  end
end

