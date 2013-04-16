#
# Cookbook Name:: node_cookbook
# Spec:: version_control_systems_test
#
# Copyright (C) 2013 chef-tutorial
#
# Some rights reserved - Redistribute
#

require 'minitest/spec'

describe_recipe "node_cookbook::solo_configuration" do

  # It's often convenient to load these includes in a separate helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  before do
  end
  describe "the functionality of the cookbook" do
    it "should create the .ssh directory for root" do
      directory("/root/.ssh").must_exist.with(:owner,"root")
    end
    
    it "should create the .ssh directory for root" do
      file("/root/.ssh/authorized_keys").must_have(:mode,"600").with(:owner,"root")
    end
  end
end
