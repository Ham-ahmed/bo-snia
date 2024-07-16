
#!/bin/sh
#

wget -O /var/volatile/tmp/astra-sm.ipk "https://raw.githubusercontent.com/Ham-ahmed/bo-snia/main/astra-sm.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/astra-sm.ipk
wait
sleep 2;
exit 0