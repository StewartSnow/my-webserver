#
# Cookbook Name:: setup-webserver
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install Apache and start the service.
httpd_service 'tivo' do
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration.
httpd_config 'tivo' do
  instance 'tivo'
  source 'tivo.conf.erb'
  notifies :restart, 'httpd_service[tivo]'
end

# Create the document root directory.
directory node['setup-webserver']['document_root'] do
  recursive true
end

# Write the home page.
file "#{node['setup-webserver']['document_root']}/index.html" do
  content '<html>This is a placeholder</html>'
  mode '0644'
  owner node['setup-webserver']['user']
  group node['setup-webserver']['group']
end
