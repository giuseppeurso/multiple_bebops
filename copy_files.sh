adb shell mount -o remount,rw / &&
adb push wpa_cli /bin/wpa_cli &&
adb shell chmod +x /bin/wpa_cli &&
adb push wpa_passphrase /bin/wpa_passphrase &&
adb shell chmod +x /bin/wpa_passphrase &&
adb push wpa_supplicant /bin/wpa_supplicant &&
adb shell chmod +x /bin/wpa_supplicant &&
adb push shortpress_3.sh /bin/onoffbutton/shortpress_3.sh &&
adb shell chmod +x /bin/onoffbutton/shortpress_3.sh &&
adb push shortpress_5.sh /bin/onoffbutton/shortpress_5.sh &&
adb shell chmod +x /bin/onoffbutton/shortpress_5.sh &&

#add the symbolic link needed to interpret wpa_passphrase and wpa_supplicant in dev firmware
adb shell ln -s /lib/ld-2.19-2014.08-1-git.so /lib/ld-linux.so.3

