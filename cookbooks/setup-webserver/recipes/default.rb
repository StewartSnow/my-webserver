#
# Cookbook Name:: setup-webserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
apt_update 'all platforms' do
  action :update
end

include_recipe 'setup-webserver::firewall'
include_recipe 'setup-webserver::web_user'
