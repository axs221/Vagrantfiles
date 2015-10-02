#
# Cookbook Name:: install
# Recipe:: git
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

git_client 'default' do
  action :install
end

script 'setup_git_user' do
  interpreter "bash"
  code <<-EOH
    git config --global user.name "Shawn Axsom"
    git config --global user.email axs221@gmail.com
    EOH
end
