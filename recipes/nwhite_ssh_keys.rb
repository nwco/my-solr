#
# Cookbook Name:: my-solr
# Recipe:: root_ssh_keys
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

directory "/home/nwhite/.ssh" do
  owner 'nwhite'
  group 'nwhite'
  mode '0700'
  action :create
end

#cookbook_file "/root/.ssh/id_rsa" do
#  source "root_id_rsa"
#  mode "0600"
#end

#cookbook_file "/root/.ssh/id_rsa.pub" do
#  source "root_id_rsa.pub"
#  mode "0644"
#end

cookbook_file "/home/nwhite/.ssh/authorized_keys" do
  source "nwhite_authorized_keys"
  owner 'nwhite'
  group 'nwhite'
  mode "0600"
end

#cookbook_file "/etc/ssh/sshd_config" do
#  source "sshd_config"
#  mode "0600"
#end
