Vagrant.configure("2") do |config|
  config.vm.provider "libvirt" do |libvirt| 
     libvirt.qemu_use_session = false
  end
  config.hostmanager.enabled=true
  config.hostmanager.manage_host=true
  config.hostmanager.manage_guest=false	
  config.vm.box = "generic/centos8"
  config.vm.synced_folder ".", "/vagrant", disabled:true
  config.vm.define "app1" do |app_vm|
     app_vm.vm.hostname = "orc-app1"
  end

  config.vm.define "app2" do |app_vm|
    app_vm.vm.hostname = "orc-app2"
  end

  config.vm.define "db" do |db_vm|
    db_vm.vm.hostname = "orc-db"
  end
end
