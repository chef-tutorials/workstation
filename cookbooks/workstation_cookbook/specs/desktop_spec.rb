#
# Cookbook Name:: workstation_cookbook
# Spec:: desktop 
#
# Copyright (C) 2013 chef-tutorial
#
# Some rights reserved - Redistribute
# 

require 'minitest/spec'

describe_recipe "workstation_cookbook::workspace" do

  # It's often convenient to load these includes in a separate helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  before do
  end

  describe "the functionality of the cookbook" do

    it "should create a desktop link file to the github tutorials" do
      file("/home/vagrant/Desktop/introduction_tutorial.desktop").must_exist.with(:owner,"vagrant").and(:group,"vagrant")
    end
  end
end
