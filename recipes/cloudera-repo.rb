#
# Cookbook Name:: ..
# Recipe:: cloudera-repo
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
cookbook_file "/etc/yum.repos.d/cloudera-manager.repo" do
  source "cloudera-manager.repo.internal"
  mode "0644"
end
