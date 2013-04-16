#
# Cookbook Name:: workstation_cookbook
# Spec:: system_settings
#
# Copyright (C) 2013 chef-tutorial
#
# Some rights reserved - Redistribute
#

require 'minitest/spec'

describe_recipe "workstation_cookbook::system_settings" do

  # It's often convenient to load these includes in a separate helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  before do
  end

  describe "the functionality of the cookbook" do
    it "should turn off the update notifier" do
      file("/etc/xdg/autostart/update-notifier.desktop").must_match /^NoDisplay=false$/
    end
  end
end
