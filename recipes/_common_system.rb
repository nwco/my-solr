#
# Cookbook Name:: solr
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

include_recipe 'solr::root_ssh_keys'
include_recipe 'solr::users'
include_recipe 'solr::nwhite_ssh_keys'
