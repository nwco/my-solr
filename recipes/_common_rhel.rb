#
# Cookbook Name:: solr
# Recipe:: _COMMON_RHEL
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
yum_repository 'epel' do
  description 'Extra Packages for Enterprise Linux'
  mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
  gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
  action :create
end

yum_repository 'cloudera-manager' do
  description 'Cloudera Manager, Version 5, Internal'
  baseurl 'http://mirror.infra.cloudera.com/archive/cm5/redhat/6/x86_64/cm/5/'
  gpgkey 'http://mirror.infra.cloudera.com/archive/cm5/redhat/6/x86_64/cm/RPM-GPG-KEY-cloudera'
  action :create
end
