Vagrant.configure("2") do |config|
  config.vm.define "SQLite1" do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
    config.vm.hostname = "SQLite1"
    
    config.vm.network "private_network", ip: "192.168.80.3"    
    config.vm.network :"public_network"

    config.vm.provision :ansible do |ansible|
     ansible.playbook = "tasks/b.yml"
    end     
    
   config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "SQLite1"]
    end
  end
  
  config.vm.define "SQLite2" do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
    config.vm.hostname = "SQLite2"
    
    config.vm.network "private_network", ip: "192.168.80.4"
    config.vm.network :"public_network"

    config.vm.provision :ansible do |ansible|
     ansible.playbook = "tasks/b.yml"
    end     
    
   config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "SQLite2"]
    end
  end
end
