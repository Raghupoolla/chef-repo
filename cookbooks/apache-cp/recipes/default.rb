#
# Cookbook:: apache-cp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package_name = "apache2"
service_name = "apache2"
Document_root = "/var/www/html"

if node["platform"] == "centos"
	package_name = "httpd"
	Service_name = "httpd"
	document_root = "/var/www/html"
end

package package_name do
	action :install
end
service service_name do
	action [:start, :enable]
end
#cookbook_file "#{document_root}/index.html" do
	#source "index.html"
	#mode "0644"
#end 
# template "#{document_root}/index.html" do
template '/var/www/html/index.html' do
	source 'index.html.erb' 
	mode '0644'
end
