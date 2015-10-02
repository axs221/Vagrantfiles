#
# Cookbook Name:: install
# Recipe:: nginx
#
# Copyright (C) 2015 Shawn Axsom
#
# All rights reserved - Do Not Redistribute
#

docker_service 'default' do
  action [:create, :start]
end
