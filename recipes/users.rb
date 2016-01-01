#
# Cookbook Name:: cdh
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
