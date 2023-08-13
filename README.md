# Djinn Plymouth Theme for Debian-based Systems

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

![Djinn Plymouth Theme](https://github.com/narderlevonian/djinn-plymouth/raw/main/djinn-plymouth.png)

Djinn is an aesthetically pleasing custom boot splash screen tailored for Debian-based operating systems. With its striking cherry-colored Debian logo accompanied by a linear progress indicator, this theme adds a touch of refinement to your system's boot-up process.

# Installation

Please proceed with the installation of Djinn on your Debian-based system by following these instructions.

Start by duplicating the repository and navigating to the Djinn folder:

```
git clone https://github.com/narderlevonian/djinn-plymouth.git
cd djinn-plymouth
```

Opt for your preferred installation method to set Djinn as the default Plymouth theme.

## Automatic Installation

If you prefer an automatic installation, you can use the provided script:

```
chmod +x install.sh
sudo ./install.sh
```

## Manual Installation

If you would rather perform a manual installation, start by copying the 'djinn' directory into the plymouth themes folder:

```
sudo cp -r djinn /usr/share/plymouth/themes/
```

Afterwards, choose your installation method according to the requirements of your system:

**Method 1. Using `update-alternatives`**

```
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/djinn/djinn.plymouth 100
sudo update-alternatives --config default.plymouth
```

Should the first method not yield the anticipated results, even though it comes with a community recommendation, you have the option to resort to the second approach:

**Method 2. Using `plymouth-set-default-theme`**

```
sudo plymouth-set-default-theme djinn
```

And finally, update your initramfs to integrate the changes:

```
sudo update-initramfs -u
```

Complete!

After completing the installation steps, simply reboot your system to experience the sleek Djinn boot splash during startup.

Or discover Djinn's charm without a complete system restart:

```
sudo plymouthd; sudo plymouth --show-splash; sleep 5; sudo killall plymouthd
```
