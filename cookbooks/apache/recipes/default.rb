#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

#install apache package

if node['platform_family'] == "redhat"
	package = "httpd"
elsif node ['platform_family'] == "debian"
	package = "apache2"
end
	

package 'apache2' do
	package_name 'package'
  action :install
end

service 'name' do
   service_name 'httpd'
  action [:start, :enable]
end

include_recipe 'apache::websites'
include_recipe 'apache::motd'



