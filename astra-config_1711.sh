#!/bin/sh

cd /tmp

wget "https://raw.githubusercontent.com/Ham-ahmed/bo-snia/refs/heads/main/astra-config_1711.tar.gz"

tar -xzf astra-config_1711.tar.gz -C /

rm -f /tmp/astra-config_1711.tar.gz

echo ""
echo ""
echo "*********************************************************"
echo "#                INSTALLED SUCCESSFULLY                 #"
echo "*                  ON - MagicPanelPro                   *"
echo "*             Enigma2 restart is required               *"
echo "*********************************************************"
echo "            UPLOADED BY  >>>>   HAMDY_AHMED              "
sleep 4
echo '========================================================='
echo ". >>>>         RESTARTING     <<<<"
echo "*********************************************************"
killall -9 enigma2

exit 0