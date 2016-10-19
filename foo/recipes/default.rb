#
# Cookbook Name:: foo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
yum_package "foo" do
  action :install
end

template "/etc/foo/foo.conf" do
  source "foo.erb"
end

service "foo" do
  action [:enable, :start]
end
