# -*- mode: ruby -*-
# vi: set ft=ruby :

username = 'chef'
password = 'Ch3fCan!'

Vagrant.configure("2") do |config|

  Vagrant.configure('2') do |config|
    config.vm.box = 'dummy'

    config.vm.provider :azure do |azure|
        azure.mgmt_certificate = '#{ENV[:AZURE_KEY]}'
        azure.mgmt_endpoint = 'https://management.core.windows.net'
        azure.subscription_id = '#{ENV[:AZURE_SUB_ID]'
        

        azure.vm_image = 'a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-R2-201407.01-en.us-127GB.vhd '
        azure.vm_user = user 
        azure.vm_password = password 

        azure.vm_name = 'azure-demo' 
        #azure.cloud_service_name = 'PROVIDE A NAME FOR YOUR CLOUD SERVICE' # same as vm_name. leave blank to auto-generate
        #azure.deployment_name = 'PROVIDE A NAME FOR YOUR DEPLOYMENT' # defaults to cloud_service_name
        azure.vm_location = 'West US' # e.g., West US
        azure.ssh_private_key_file = 'PATH TO YOUR KEY FILE'
        azure.ssh_certificate_file = 'PATH TO YOUR CERTIFICATE FILE'

        # Provide the following values if creating a *Nix VM
        #azure.ssh_port = 'A VALID PUBLIC PORT'

        # Provide the following values if creating a Windows VM
        azure.winrm_transport = [ 'http', 'https' ] # this will open up winrm ports on both http (5985) and http (5986) ports
        #azure.winrm_https_port = 'A VALID PUBLIC PORT' # customize the winrm https port, instead of 5986
        #azure.winrm_http_port = 'A VALID PUBLIC PORT' # customize the winrm http port, insted of 5985

        azure.tcp_endpoints = '3389:53389' # opens the Remote Desktop internal port that listens on public port 53389. Without this, you cannot RDP to a Windows VM.
    end

    config.ssh.username = user # the one used to create the VM
    config.ssh.password = password # the one used to create the VM
  end



  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/demoenv"
  #   chef.validation_client_name = "demoenv-validator"
  #   chef.validation_key_path = ".chef/demoenv-validator.pem"
  # end
end
