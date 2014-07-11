

#where to get the ChefDK RPM and it's name
default["demo-workstation"]["chefdk_rpm"] = "chefdk-0.1.0-1.el6.x86_64.rpm"
default["demo-workstation"]["chefdk_baseurl"] = "https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/"
default["demo-workstation"]["chefdk_url"] = "#{default["demo-workstation"]["chefdk_baseurl"]}#{default["demo-workstation"]["chefdk_rpm"]}"

# chef users password
default["demo-workstation"]["chef_passwd"] = "$1$zGNiXIwl$SZ.5Jq9I4UfIY5SPCd7mN0"

#git repository of the chef-repo
default["demo-workstation"]["git_repo"] = "git@github.com:github.com/mfdii/demo-env"

#typically this is the ChefDK gem install
default["demo-workstation"]["gem_binary"] = "/opt/chefdk/embedded/bin/gem"


