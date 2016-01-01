name "solr"
maintainer "Nick White"
maintainer_email "nwhite@cloudera.com"
description "Installs and configures a single Solr node for testing"
version "0.1.0"

depends "yum", ">= 3.8.2"

%w{ centos redhat }.each do |os|
  supports os
end
