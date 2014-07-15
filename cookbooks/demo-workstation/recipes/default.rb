#
# Cookbook Name:: demo-workstation
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
remote_file "/tmp/#{node["demo-workstation"]["chefdk_rpm"]}" do
  owner "root"
  group "root"
  mode "0644"
  source "#{node["demo-workstation"]["chefdk_url"]}"
  checksum "sha256checksum"
end

package "chefdk" do
 	action :install
 	source "/tmp/#{node["demo-workstation"]["chefdk_rpm"]}"
end

remote_file "/tmp/#{node["demo-workstation"]["vagrant_rpm"]}" do
  owner "root"
  group "root"
  mode "0644"
  source "#{node["demo-workstation"]["vagrant_url"]}"
  checksum "sha256checksum"
end

package "vagrant" do
	action :install
	source "/tmp/#{node["demo-workstation"]["vagrant_rpm"]}"
end

package "git" do
	action :install
end

group "chef" do
	action :create
	gid "1000"
end

user "chef" do
	action :create
	comment "Chef Demo User"
	uid 1000
	gid "chef"
	home "/home/chef"
	shell "/bin/bash"
	password node["demo-workstation"]["chef_passwd"]
	supports :manage_home => true 
end

directory "/demo" do
	owner "chef"
	group "chef"
	mode "0775"
	action :create
end

directory "/demo/extras" do
	owner "chef"
	group "chef"
	mode "0775"
	action :create
end

git "/demo/demo-env" do
	repository node["demo-workstation"]["git_repo"]
	reference "master"
	user "chef"
	group "chef"
	action :sync
end

execute "Install devtools" do
	command "yum groupinstall -y 'Development Tools'"
	action :run
end

gem_package "knife-ec2" do
	gem_binary (node["demo-workstation"]["gem_binary"])
end

gem_package "knife-azure" do
	gem_binary (node["demo-workstation"]["gem_binary"])
end

%w{vagrant-azure vagrant-aws vagrant-windows}.each do |plugin|
	execute "Install #{plugin}" do
		command "su - chef -c 'vagrant plugin install #{plugin}'"
		only_if {Dir.glob("/home/chef/.vagrant.d/gems/gems/#{plugin}*").empty?}
		action :run
	end
end

ark "dsc" do
  action :put
  url "https://www.dropbox.com/s/lbge18moxwvqaoa/dsc.tar.gz?dl=1"
  path "/demo/extras"
end








