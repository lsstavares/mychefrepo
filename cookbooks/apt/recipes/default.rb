#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "apt update" do 
	command "apt-get update"
end

execute "apt upgrade" do
	command "apt-get upgrade"
end

