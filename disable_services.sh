#!/bin/bash

# 必要なサービスリスト
essential_services=(
    "accounts-daemon.service"
    "cron.service"
    "lightdm.service"
    "networking.service"
    "NetworkManager.service"
    "ssh.service"
    "systemd-timesyncd.service"
    "wpa_supplicant.service"
    "udisks2.service"
    "dphys-swapfile.service"
    "xrdp.service"
)

# 全てのサービスを無効化
for service in $(systemctl list-unit-files --type=service --state=enabled | awk '{print $1}'); do
    if [[ ! " ${essential_services[@]} " =~ " ${service} " ]]; then
        echo "Disabling $service"
        sudo systemctl disable $service
        sudo systemctl stop $service
    else
        echo "Keeping $service enabled"
    fi
done

# 必要なサービスを有効化
for service in "${essential_services[@]}"; do
    echo "Enabling $service"
    sudo systemctl enable $service
    sudo systemctl start $service
done

echo "Finished adjusting services."