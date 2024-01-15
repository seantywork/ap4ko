# kcrack-rtl8852au

**Disclaimer : I am not liable for any misuse of this code**
**Only use it on machines and in environments that you have explicit permissions and authrizations to do so**

Unnecessarily (and sometimes dangerously) talkative kernel wifi driver module for rtl8852au 

### Installation instruction
##### Requirements
You will need to install "make", "gcc", "kernel headers", "kernel build essentials", and "git".

For **Ubuntu**: You can install them with the following command
```bash
sudo apt-get update
sudo apt-get install make gcc linux-headers-$(uname -r) build-essential git
```
For **Fedora**: You can install them with the following command
```bash
sudo dnf install kernel-headers kernel-devel
sudo dnf group install "C Development Tools and Libraries"
```
For **openSUSE**: Install necessary headers with
```bash
sudo zypper install make gcc kernel-devel kernel-default-devel git libopenssl-devel
```
For **Arch**: After installing the necessary kernel headers and base-devel,
```bash
git clone https://aur.archlinux.org/rtw89-dkms-git.git
cd rtw89-dkms-git
makepkg -sri
```
If any of the packages above are not found check if your distro installs them like that.

##### Installation
When a USB device is plugged in, or detected at boot, this rule causes the utulity
usb_modeswitch to unload any 0bda:1a2b devices that it finds. If you have a
device with different ID, change the rule accordingly.

The build this driver, do the following:

For all distros:
```bash
git clone https://github.com/lwfinger/rtl8852au.git
cd rtl8852au
make
sudo make install

When you get a new kernel, you will need to rebuild the driver. Do the following:
cd rtl8852au
git pull
make
sudo make install
```

## Adding modules to DKMS for Debian/Ubuntu

DKMS automatically rebuilds the driver module for each kernel update. (So that you don't have to `make; make install` at every update)

Build and Installation (For currently active kernel)

```bash
# Add module to dkms tree
sudo dkms add .

# Build 
sudo dkms build rtl8852au -v 1.15.0.1

# Install 
sudo dkms install rtl8852au -v 1.15.0.1

# Check installation
modinfo 8852au

# Load driver 
modprobe 8852au
```




Larry Finger
