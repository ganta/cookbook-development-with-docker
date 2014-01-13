#
# Cookbook Name:: kitchen-docker
# Recipe:: default
#
# Author:: Hideki IGARASHI (<hideki.develop@gmail.com>)
#
# Copyright 2014, Hideki IGARASHI
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

ruby_version = node[:kitchen_docker][:ruby_version]

# Installing a Ruby
rbenv_ruby ruby_version do
  global true
end

# Installing kitchen-docker gem
rbenv_gem "kitchen-docker" do
  ruby_version ruby_version
end
