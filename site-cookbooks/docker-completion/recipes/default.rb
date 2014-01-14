#
# Cookbook Name:: docker-completion
# Recipe:: default
#
# Author:: Hideki IGARASHI (<hideki.develop@gmail.com>)
#
# Copyright 2014, Hideki IGARASHI
#
# All rights reserved - Do Not Redistribute
#

remote_file "/etc/bash_completion.d/docker" do
  source "https://raw.github.com/dotcloud/docker/master/contrib/completion/bash/docker"
end
