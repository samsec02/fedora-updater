#!/bin/bash

# Fedora and Flatpak update script
# Use: Run this manually desired time


# Uncomment if you want to log each time the script has been run. 
# Main use case for Anacron
#LOGFILE="/var/log/update-fedora.log"
#exec >> "$LOGFILE" 2>&1
#echo "=== Update started: $(date) ==="


echo "Starting Fedora system update"

# Update DNF packages
echo "[1/3] Updating system packages via DNF..."
sudo dnf upgrade --refresh -y

# Remove unused dependencies
echo "[2/3] Cleaning up old packages..."
sudo dnf autoremove -y

# Update Flatpak packages
echo "[3/3] Updating Flatpak packages..."
flatpak update -y

echo "Update done"
