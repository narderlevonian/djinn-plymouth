# Djinn Plymouth Theme for Debian-based Systems

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

![Djinn Plymouth Theme](https://github.com/narderlevonian/djinn-plymouth/raw/main/djinn-plymouth.png)

Djinn is an aesthetically pleasing custom boot splash screen tailored for Debian-based operating systems. With its striking cherry-colored Debian logo accompanied by a linear progress indicator, this theme adds a touch of refinement to your system's boot-up process.

# Installation

Follow next steps to install the Djinn on your Debian-based system.

1. Clone the repository and navigate to the directory:

```
git clone https://github.com/narderlevonian/djinn-plymouth.git
cd djinn-plymouth
```

2. Copy the 'djinn' directory to the plymouth themes folder:

```
sudo cp -r djinn /usr/share/plymouth/themes/
```

3. Select your preffered method to set Djinn as your default Plymouth theme.

**Method 1. Using `update-alternatives`**

```
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/djinn/djinn.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u
```

**Method 2. Using `plymouth-set-default-theme`**

```
sudo plymouth-set-default-theme djinn
sudo update-initramfs -u
```

After completing the steps above, simply reboot your system to immerse yourself in the sleek Djinn boot splash experience during startup.

To conveniently test Djinn without the need for a full reboot:

```
sudo plymouthd; sudo plymouth --show-splash; sleep 5; sudo killall plymouthd
```
