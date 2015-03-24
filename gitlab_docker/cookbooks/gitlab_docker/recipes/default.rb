#
# Cookbook Name:: gitlab_docker
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'docker'


docker_image 'samalba/docker-registry'
