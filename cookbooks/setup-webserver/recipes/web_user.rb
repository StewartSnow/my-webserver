#
# Cookbook Name:: setup-webserver
# Recipe:: web_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['setup-webserver']['group']

user node['setup-webserver']['user'] do
  group node['setup-webserver']['group']
  system true
  shell '/bin/bash'
end
