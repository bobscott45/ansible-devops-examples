Uses vagrant libvirt and hostmanage plugins.

fedora-install.sh will install packages for ansible and vagrant on fedora33.

Run vagrant plugin list to check that the plugins have installed.

Add the following lines to ~/.ssh/config (create if it doesn't exist):-

Host orc-*
  StrictHostKeyChecking no

