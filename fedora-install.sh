#/bin/bash
sudo dnf install ansible vagrant vagrant-libvirt vagrant-hostmanager
echo Add the following lines to ~/.ssh/config 
echo Host orc-* 
echo  StrictHostKeyChecking no

