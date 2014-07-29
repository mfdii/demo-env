

#where to get the ChefDK RPM and it's name
default["demo-workstation"]["chefdk_rpm"] = "chefdk-0.2.0-2.el6.x86_64.rpm"
default["demo-workstation"]["chefdk_baseurl"] = "https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.2.0-2.el6.x86_64.rpm"
default["demo-workstation"]["chefdk_url"] = "#{default["demo-workstation"]["chefdk_baseurl"]}#{default["demo-workstation"]["chefdk_rpm"]}"

#where to get Vagrant
default["demo-workstation"]["vagrant_rpm"] = "vagrant_1.6.3_x86_64.rpm"
default["demo-workstation"]["vagrant_baseurl"] = "https://dl.bintray.com/mitchellh/vagrant/"
default["demo-workstation"]["vagrant_url"] = "#{default["demo-workstation"]["vagrant_baseurl"]}#{default["demo-workstation"]["vagrant_rpm"]}"

# chef users password
default["demo-workstation"]["chef_passwd"] = "$1$zGNiXIwl$SZ.5Jq9I4UfIY5SPCd7mN0"

#git repository of the chef-repo
default["demo-workstation"]["git_repo"] = "git://github.com/mfdii/demo-env"

#typically this is the ChefDK gem install
default["demo-workstation"]["gem_binary"] = "/opt/chefdk/embedded/bin/gem"


