#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install apache package
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end
package 'apache' do
	package_name package
	action :install
end
#Start apche
service 'apache2' do
	service_name package
	action [:start, :enable]
end

