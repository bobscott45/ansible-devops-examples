Vagrantfile and ansible examples based on Jeff Geerling's Ansible for Devops book updated to run with libvirt
on Linux, specifically Fedora 33.

Uses vagrant libvirt and hostmanage plugins.

fedora-install.sh will install packages for ansible and vagrant on fedora33.

Run vagrant plugin list to check that the plugins have installed.

To prevenet problems when keys are regenerated add the following lines to ~/.ssh/config (create if it doesn't exist):-


Host orc-*
  StrictHostKeyChecking no



To list vms run: virsh -c qemu:///system list

To have virsh default to the sytem uri do one of:-

    set environment variable LIBVIRT_DEFAULT_URI="qemu:///system"

    add the following line to ~/.config/libvirt/libvirt.conf: uri_default = "qemu:///system"


Check the default uri with virsh uri.

You can then list the vms with virsh list

To run the chapter 4 node-express example run the following command from the ansible-devops-example directory:-

ansible-playbook --limit node ch4/node-express/playbook.yml




