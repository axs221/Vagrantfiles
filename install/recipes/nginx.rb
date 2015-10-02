#
# Cookbook Name:: install
# Recipe:: nginx
#
# Copyright (C) 2015 Shawn Axsom
#
# All rights reserved - Do Not Redistribute
#

# Pull latest image
docker_image 'nginx' do
  action :pull
#  notifies :redeploy, 'docker_container[my_nginx]'
end

# Run container exposing ports
docker_container 'my_nginx' do
  repo 'nginx'
  tag 'latest'
  port '80:80'
#   hostname 'www'
#   domain_name 'computers.biz'
#   env 'FOO=bar'
#   binds [ '/some/local/files/:/etc/nginx/conf.d' ]
end
