#
# Cookbook Name:: my-solr
# Recipe:: _COMMON_RHEL
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Add EPEL Repo
yum_repository 'epel' do
  description 'Extra Packages for Enterprise Linux'
  mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
  gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
  action :create
end
