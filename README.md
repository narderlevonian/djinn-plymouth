# Djinn Plymouth Theme for Debian-based Systems

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

![Djinn Plymouth Theme](https://github.com/narderlevonian/djinn-plymouth/raw/main/djinn-plymouth.png)

Djinn is an aesthetically pleasing custom boot splash screen tailored for Debian-based operating systems. With its striking cherry-colored Debian logo accompanied by a linear progress indicator, this theme adds a touch of refinement to your system's boot-up process.

# Installation

Follow next steps to install the Djinn on your Debian-based system.

Begin by cloning the repository and moving into the Djinn directory:

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

If you prefer an manual installation, you can first copy the 'djinn' directory to the plymouth themes folder:

```
sudo cp -r djinn /usr/share/plymouth/themes/
```

Select your installation method based on your system's needs:

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

After completing the installation steps, simply reboot your system to experience the sleek Djinn boot splash during startup.
Or discover Djinn's charm without a complete system restart:

```
sudo plymouthd; sudo plymouth --show-splash; sleep 5; sudo killall plymouthd
```
