
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 2
		vb.customize ["modifyvm", :id, "--vram", "128"]
    end
 
end
