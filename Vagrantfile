
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "tomcat8"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  
  config.vm.provision "shell", path: "provision-tomcat.sh"

  config.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 2
		vb.customize ["modifyvm", :id, "--vram", "128"]
    end
 
end
