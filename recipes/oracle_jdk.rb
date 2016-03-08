#
# Cookbook Name:: my-solr
# Recipe:: oracle-jdk
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#package "oracle-j2sdk1.7" do
#  action :install
#end

node.default['java']['install_flavor']  = 'oracle'
#node.default['java']['oracle_rpm']['type']  = 'jdk'
node.default['java']['jdk_version'] = '7'
node.default['java']['oracle']['accept_oracle_download_terms']  = true
include_recipe 'java'
