# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if ARGV[1] == 'wireguard'
    config.vm.box = "debian/bullseye64"
    config.ssh.insert_key = false
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.provider :virtualbox do |v|
      v.memory = 1024
      v.linked_clone = true
    end
    
    # wireguard master node.
    config.vm.define "master" do |app|
      app.vm.hostname = "master.wireguard"
      app.vm.network  :private_network, ip: "192.168.56.2"
    end
    
    # wireguard client node 1
    config.vm.define "node1" do |app|
      app.vm.hostname = "node1.wireguard"
      app.vm.network  :private_network, ip: "192.168.56.3"
    end
    
    # wireguard client node 1
    config.vm.define "node2" do |app|
      app.vm.hostname = "node.wireguard"
      app.vm.network  :private_network, ip: "192.168.56.4"
    end
    
      # Ansible provisioner.
    # config.vm.provision :ansible do |ansible|
    #   ansible.playbook = "playbook.yml"
    #   # Increase ansible output verbosity
    #   ansible.host_key_checking = false
    #   # ansible.verbose = "-v"
    #   # Become superuser
    #   # ansible.become = true
    # end
  end
  
  if ARGV[1] == 'kali'
    config.vm.box = "kalilinux/rolling"
    #config.ssh.insert_key = false
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.provider :virtualbox do |v|
      v.memory = 3072
      v.linked_clone = true
    end

    # Kali Host
    config.vm.define "kali" do |host|
      host.vm.hostname = "kali"
      host.vm.network  :private_network, ip: "192.168.56.2"
    end
    # Ansible Provisioner
    config.vm.provision :ansible do |ansible|
      ansible.playbook = "pl_init.yml"
      ansible.host_key_checking = false
      ansible.verbose = "-v"
    end
  end 
end
