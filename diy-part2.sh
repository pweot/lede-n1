sed -i "s/192.168.1.1/192.168.2.2/" package/base-files/files/bin/config_generate
sed -i 's/$(TARGET_DIR)) install/$(TARGET_DIR)) install --force-overwrite --force-depends/' package/Makefile
