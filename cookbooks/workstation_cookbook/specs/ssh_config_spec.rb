#
# Cookbook Name:: workstation_cookbook
# Spec:: ssh_config_test
#
# Copyright (C) 2013 chef-tutorial
#
# Some rights reserved - Redistribute
#

require 'minitest/spec'

describe_recipe "workstation_cookbook::ssh_config" do

  # It's often convenient to load these includes in a separate helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  before do
  end

  describe "the functionality of the cookbook" do
    it "should place the insecure vagrant pem file for workstation" do
      file("/home/vagrant/.ssh/id_rsa").must_have(:mode, "600").with(:owner, "vagrant").and(:group, "vagrant")
    end

    it "should place the ssh configuration file in the home directory" do
      file("/home/vagrant/.ssh/config").must_have(:mode, "755").with(:owner, "vagrant").and(:group, "vagrant")
    end

    it "should not ask for authenticity of the host" do
      file('/home/vagrant/.ssh/config').must_match /^StrictHostKeyChecking=no$/
      file('/home/vagrant/.ssh/config').must_match /^UserKnownHostsFile=\/dev\/null$/
      file('/home/vagrant/.ssh/config').must_match /^LogLevel=quiet$/
    end
  end
end
