# Cookbook:: remove-apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
service 'apache2' do
  action :stop
end