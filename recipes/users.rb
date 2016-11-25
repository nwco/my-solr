#
# Cookbook Name:: my-solr
# Recipe:: users
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
user 'nwhite' do
  comment 'Nick White'
  home '/home/nwhite'
  shell '/bin/bash'
  password 'hhsuper'
  action :create
end

directory '/home/nwhite' do
  owner 'nwhite'
  group 'nwhite'
  mode '755'
  action :create
end
