#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'tdi' do
  action :create
  comment "Test Driven Infrastructure"
  home "/home/tdi"
  manage_home true
end

package 'irssi' do
  action :remove
end

directory '/home/tdi/.irssi' do
  owner 'tdi'
  group 'tdi'
end

cookbook_file '/home/tdi/.irssi/config' do
  source 'irssi-config'
  owner 'tdi'
  group 'tdi'
end

