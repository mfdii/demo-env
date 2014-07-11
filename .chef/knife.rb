# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "#{ENV['DEMO_USER']}"
client_key               "#{ENV['DEMO_KEY_BASE']}/#{ENV['DEMO_USER']}.pem"
validation_client_name   "demoenv-validator"
validation_key           "#{ENV['DEMO_KEY_BASE']}/demoenv-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/demoenv"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
