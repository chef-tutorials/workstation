#
# Cookbook Name:: workstation_cookbook
# Spec:: packages_test
#
# Copyright (C) 2013 chef-tutorial
#
# Some rights reserved - Redistribute
#

require 'minitest/spec'

describe_recipe "workstation_cookbook::packages" do

  # It's often convenient to load these includes in a separate helper along with
  # your own helper methods, but here we just include them directly:
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  before do
  end

  describe "the functionality of the cookbook" do
    it "installs vim" do
      package("vim").must_be_installed
    end

    it "installs tmux" do
      package("tmux").must_be_installed
    end

    it "installs sublime-text" do
      package("sublime-text").must_be_installed
    end
  end
end
