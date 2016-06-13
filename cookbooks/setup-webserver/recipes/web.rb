#
# Cookbook Name:: setup-webserver
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install Apache and start the service.
package "apache2" do
  action:install
end

service "apache2" do
  action :enable
end

service "apache2" do
  action :start
end
