# To install nVidia Drivers (tested with v375)
# after apt update:
sudo apt-get remove nvidia* && sudo apt-get autoremove
sudo vim /etc/modprobe.d/blacklist-nouveau.conf
# edit the file to looks like this:
# blacklist nouveau
# blacklist lbm-nouveau
# options nouveau modeset=0
# alias nouveau off
# alias lbm-nouveau off
echo options nouveau modeset=0 | sudo tee -a /etc/modprobe.d/nouveau-kms.conf
update-initramfs -u
sudo update-initramfs -u
sudo lightdm status
sudo lightdm stop
sudo reboot now
# if dont give signal, must connect to the vga port and continue

# After reboot
sudo lightdm stop
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo ubuntu-drivers list
sudo ubuntu-drivers autoinstall

# After this, apt will install the drivers avialable to the system
# if all ok, reconect to the ports of the gpu

# Enjoy! me of the future