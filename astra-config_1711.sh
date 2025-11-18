#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

WORK_DIR="/tmp"
CONFIG_FILE="astra-config_1711.tar.gz"
DOWNLOAD_URL="https://raw.githubusercontent.com/Ham-ahmed/bo-snia/refs/heads/main/astra-config_1711.tar.gz"

clear
echo "${CYAN}"
echo "*****************************************************"
echo "#           MagicPanelPro Config Installer          #"
echo "*****************************************************"
echo "${NC}"
sleep 2

cd "$WORK_DIR"

if ! command -v wget >/dev/null 2>&1; then
    echo "${RED}Error: wget is required but not installed!${NC}"
    exit 1
fi

if ! command -v tar >/dev/null 2>&1; then
    echo "${RED}Error: tar is required but not installed!${NC}"
    exit 1
fi

echo "${YELLOW}Downloading configuration file...${NC}"
if wget -q "$DOWNLOAD_URL"; then
    echo "${GREEN}Download completed successfully${NC}"
else
    echo "${RED}Error: Failed to download file!${NC}"
    exit 1
fi

echo "${YELLOW}Extracting files...${NC}"
if tar -xzf "$CONFIG_FILE" -C /; then
    echo "${GREEN}Extraction completed successfully${NC}"
else
    echo "${RED}Error: Failed to extract files!${NC}"
    rm -f "$CONFIG_FILE"
    exit 1
fi

rm -f "$CONFIG_FILE"
echo "${GREEN}Temporary files cleaned up${NC}"

sleep 2

echo ""
echo ""
echo "${GREEN}"
echo "*****************************************************"
echo "#           INSTALLED SUCCESSFULLY                  #"
echo "*****************************************************"
echo "${CYAN}"
echo "*              Platform: MagicPanelPro              *"
echo "*         Enigma2 restart is required               *"
echo "*****************************************************"
echo "${PURPLE}"
echo "               UPLOADED BY >>> HAMDY_AHMED          "
echo "${NC}"
echo "${WHITE}========================================${NC}"

echo "${YELLOW}>>>> RESTARTING ENIGMA2 <<<<${NC}"
echo "${BLUE}Please wait...${NC}"
sleep 3

killall -9 enigma2

exit 0