#
# Cookbook Name:: install
# Recipe:: dotfiles
#
# Copyright (C) 2015 Shawn Axsom
#
# All rights reserved - Do Not Redistribute
#

git "/home/vagrant/.dotfiles" do
  user "vagrant"
  repository "git://github.com/axs221/dotfiles.git"
  reference "master"
  action :sync
end

execute "preinstall" do
  command "sh /home/vagrant/.dotfiles/preinstall.sh"
end

# execute "install" do
#   user "vagrant"
#   command "sh /home/vagrant/.dotfiles/install.sh"
# end
