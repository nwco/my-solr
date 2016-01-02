#
# Cookbook Name:: my-solr
# Recipe:: solr_server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "my-solr::_common_rhel"
include_recipe "my-solr::_common_system"
node['solr']['version'] = '4.10.3'
node['solr']['install_java'] = false
include_recipe 'solr::default'
