#
# Cookbook Name:: cdh
# Recipe:: root_ssh_keys
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

directory "/root/.ssh" do
  owner 'root'
  group 'root'
  mode '0700'
  action :create
end

cookbook_file "/root/.ssh/id_rsa" do
  source "root_id_rsa"
  mode "0600"
end

cookbook_file "/root/.ssh/id_rsa.pub" do
  source "root_id_rsa.pub"
  mode "0644"
end

cookbook_file "/root/.ssh/authorized_keys" do
  source "root_authorized_keys"
  mode "0600"
end

cookbook_file "/etc/ssh/sshd_config" do
  source "sshd_config"
  mode "0600"
end
