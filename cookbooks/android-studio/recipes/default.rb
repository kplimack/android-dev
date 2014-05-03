#
# Cookbook Name:: android-studio
# Recipe:: default
#
# Copyright 2014, Jake Plimack
#
# All rights reserved - Do Not Redistribute
#

node[:android][:packages].each do |pkg|
  package pkg
end

#you can node.override[:gradle][:version] && node.save, if you like...
if node[:android][:use_gradle]
  include_recipe "gradle"
end


if node[:android][:emulator][:genymotion]
  include_recipe "genymotion"
end

case node['platform_family']
when "debian", "rhel", "centos", "fedora", "arch", "gentoo", "openbsd", "slackware", "suse"
  include_recipe "android-studio:_linux"
when "mac_os_x"
  if node[:android][:install_haxm]
    include_recipe "android-studio::haxm"
  end
  include_recipe "android-studio::_osx"  
when "windows"
  # you're diminishing my faith in the universe
end

