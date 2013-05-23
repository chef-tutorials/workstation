#
# Cookbook Name:: node_cookbook
# Spec:: solo_coookbooks_test
#
# Copyright (C) 2013 chef-tutorial
#
# Some rights reserved - Redistribute
#

require 'minitest/spec'

describe_recipe "node_cookbook::solo_cookbooks" do

  # It's often convenient to load these includes in a separate helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  before do
  end
  describe "the functionality of the cookbook" do
    it "should place the chef_handler cookbook in the /var/chef/cookbooks directory" do
      file("/var/chef/cookbooks/chef_handler").must_exist
      file("/var/chef/cookbooks/chef_handler/metadata.rb").must_match "chef_handler"
    end
    it "should place the minitest_handler_solo cookbook in the /var/chef/cookbooks directory" do
      file("/var/chef/cookbooks/minitest-handler-solo").must_exist
      file("/var/chef/cookbooks/minitest-handler-solo/metadata.rb").must_match "minitest-handler-solo"
    end

  end
end
