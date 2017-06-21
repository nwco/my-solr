#
# Cookbook Name:: my-solr
#
# Copyright (c) 2015 Nick White, All Rights Reserved.
require 'pp'
include_recipe 'java'
include_recipe 'my-solr::_common_rhel'
include_recipe 'my-solr::_common_system'
pp node.debug_value('solr', 'install_java')
node.default['solr']['version'] = '4.10.3'
node.default['solr']['url'] = 'https://archive.apache.org/dist/lucene/solr/4.10.3/solr-4.10.3.tgz'
# Get SHA256 checksum on MacOS: shasum -a 256 <file>
node.default['solr']['checksum'] = 'ac7024a0a759c6c53cc3a66b3a84757d599d350f491eb221160613356532e2b6'
node.default['solr']['data_dir'] = '/opt/solr-4.10.3/example/solr'
node.default['solr']['install_java'] = false
include_recipe 'solr'
