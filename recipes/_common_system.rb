#
# Cookbook Name:: my-solr
# Recipe:: _COMMON_SYSTEM
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package "mlocate" do
  action :install
end

package "unzip" do
  action :install
end

package "lsof" do
  action :install
end

package "ngrep" do
  action :install
end

package "vim-enhanced" do
  action :install
end

cookbook_file "/etc/vimrc" do
  source "vimrc"
  mode "0644"
end

include_recipe 'my-solr::root_ssh_keys'
include_recipe 'my-solr::users'
include_recipe 'my-solr::nwhite_ssh_keys'
