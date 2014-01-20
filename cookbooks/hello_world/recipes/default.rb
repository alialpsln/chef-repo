#
# Cookbook Name:: hello_world
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "hello_world" do
	source 'hello_world.erb'
	mode '0644'
end