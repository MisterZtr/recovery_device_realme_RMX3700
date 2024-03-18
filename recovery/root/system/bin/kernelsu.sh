#!/sbin/sh
if [ -f "/data/adb/ksu/modules.img" ]; then
  e2fsck -fy /data/adb/ksu/modules.img;
  resize2fs -M /data/adb/ksu/modules.img;
  mount -t auto -o loop /data/adb/ksu/modules.img /data/adb/modules;
fi;
