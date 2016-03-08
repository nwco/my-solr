#
# Cookbook Name:: my-solr
# Recipe:: solr_server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# Testing chef-solr recipe
# https://github.com/dwradcliffe/chef-solr
#
require 'pp'

include_recipe "my-solr::_common_rhel"
include_recipe "my-solr::_common_system"
node.default['solr']['version'] = '4.10.3'
node.default['solr']['data_dir'] = '/opt/solr-4.10.3/example/solr'
node.default['solr']['install_java'] = false
pp node.debug_value('solr','install_java')
include_recipe 'solr::default'
pp node.debug_value('solr','install_java')
