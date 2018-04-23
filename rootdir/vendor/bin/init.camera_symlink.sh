#! /vendor/bin/sh

# Camera configs dir symlink script
# We need to create symlink only once for support GSI ROMs
SYMLINK_DIR=/system/etc/camera
SOURCE_DIR=/vendor/etc/camera

if [ ! -f $SYMLINK_DIR ]; then
    mount -o rw,remount /system
    ln -sf $SOURCE_DIR $SYMLINK_DIR
    mount -o ro,remount /system
fi
