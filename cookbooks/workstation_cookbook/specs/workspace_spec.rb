#
# Cookbook Name:: workstation_cookbook
# Spec:: workspace_test
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
    it "should create the tutorials directory" do
      directory("/home/vagrant/tutorials").must_exist.with(:owner,"vagrant")
    end

    it "should checkout the introduction repository in the tutorials directory" do
      `grep "https://github.com/chef-tutorials/introduction.git" /home/vagrant/tutorials/introduction/.git/config`
      outcome = $?.exitstatus
      assert outcome == 0, "The introduction repository isn't cloned"
    end

    it "should be owned by the correct user" do
      directory("/home/vagrant/tutorials/introduction").must_exist.with(:owner, "vagrant").and(:group,"vagrant")
    end

    it "should create a .chef directory at home" do
      directory("/home/vagrant/.chef").must_exist.with(:owner,"vagrant").and(:group,"vagrant")
    end

    it "should create an empty knife config file at $HOME/.chef" do
      file("/home/vagrant/.chef/knife.rb").must_exist.with(:owner,"vagrant").and(:group,"vagrant")
    end
  end
end
