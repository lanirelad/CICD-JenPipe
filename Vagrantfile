Vagrant.configure("2") do |config|
  # Set the boot timeout to 10 minutes (600 seconds)
  config.vm.boot_timeout = 600
  # First VM configuration
  config.vm.define "CICD-Proj" do |desktop|
    desktop.vm.box = "aaronvonawesome/ubuntu-2404-cinnamon"
    desktop.vm.hostname = "CICD-Proj"

    # Add port forwarding for used ports
    config.vm.network "forwarded_port", guest: 8080, host: 8080
    config.vm.network "forwarded_port", guest: 5056, host: 5056
    config.vm.network "forwarded_port", guest: 5012, host: 5012
    config.vm.network "forwarded_port", guest: 8081, host: 8081
    
    # Add a private network with a specific IP address
    desktop.vm.network "private_network", ip: "192.168.33.10"

    # Add public network for internet access
    desktop.vm.network "public_network"

    # Provisioning script for jenkins installation
    desktop.vm.provision "shell", path: "provisions/install-jenkins.sh"
    # installing docker
    desktop.vm.provision "shell", path: "provisions/install-docker.sh"

    # Enable drag and drop
    desktop.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "512"
      vb.name = "CICD-Proj" 
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    end

    # Synced folder
    desktop.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  end
end
