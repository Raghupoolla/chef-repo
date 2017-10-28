#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# install apache
package "apache2" do
	action :install
end
 
# start the service
service "apache2" do
	action [:enable, :start]
end

#wtie a homepage
cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode "0644"
end