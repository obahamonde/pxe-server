#!/bin/bash

# Path to the ISO file
ISO_PATH="./windows.iso"

# Directory where the ISO will be mounted
MOUNT_POINT="/windows"

# Create the mount point directory if it doesn't exist
mkdir -p "$MOUNT_POINT"

# Mount the ISO
sudo mount -o loop "$ISO_PATH" "$MOUNT_POINT"

# List the contents of the ISO
ls "$MOUNT_POINT"

# Copy the required files
# Replace "/path/to/destination" with the path where you want to copy the files
cp "$MOUNT_POINT/sources/boot.wim" "/path/to/destination"
cp "$MOUNT_POINT/bootmgr" "/path/to/destination"
cp "$MOUNT_POINT/boot/bcd" "/path/to/destination"

# Unmount the ISO
sudo umount "$MOUNT_POINT"
