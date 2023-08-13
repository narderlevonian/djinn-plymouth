#!/bin/bash

commands=("git" "sudo" "update-initramfs" "plymouthd" "plymouth")
missing_commands=()

for cmd in "${commands[@]}"; do
    if ! command -v "$cmd" &> /dev/null; then
        missing_commands+=("$cmd")
    fi
done

if [ ${#missing_commands[@]} -gt 0 ]; then
    echo -e "\e[31mThe following commands are missing: ${missing_commands[@]}\e[0m"
    exit 1
fi

echo "Choose an installation method:"
echo "1. Using update-alternatives"
echo "2. Using plymouth-set-default-theme"
read -p "Enter your choice (1/2): " choice

case "$choice" in
    1)
        sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/djinn/djinn.plymouth 100
        sudo update-alternatives --config default.plymouth
        sudo update-initramfs -u
        ;;
    2)
        sudo plymouth-set-default-theme djinn
        sudo update-initramfs -u
        ;;
    *)
        echo -e "\e[31mInvalid choice. Exiting.\e[0m"
        exit 1
        ;;
esac

read -p "Do you want to test the theme now? (y/N): " test_choice

if [[ "$test_choice" =~ ^[Yy]$ ]]; then
    sudo plymouthd
    sudo plymouth --show-splash
    sleep 5
    sudo killall plymouthd
fi

echo "Installation and testing completed."

