#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install apache package
package 'apache' do
	package_name 'httpd'
	action :install
end
#Start apche
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end
