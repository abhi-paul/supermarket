#
# Cookbook Name:: build-cookbook
# Recipe:: lint
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'build-cookbook::prepare'

ruby_execute 'Rubocop Supermarket' do
  command 'bundle exec rake spec:rubocop'
  cwd node['components']['supermarket']['src']
  version node['components']['supermarket']['ruby_version']
end
