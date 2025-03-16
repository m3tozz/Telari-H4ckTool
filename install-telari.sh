########################################
# Made By M3TOZZ                       #
# https://m3tozz.github.io             #
########################################
if [[ "${UID}" != 0 ]] ; then
	echo -e "Please run this script as with root privileges:\n\tsudo bash ./install-telari.sh"
	exit 1
fi
sleep 1

echo -e "\033[1;31m
System update is performed before package installations...\033[01;32m"
if ! command -v apt
then
clear
echo -e "\033[1;31m
Apt Not Found!\033[1;33m
\033[1;36m
Telari only works on Ubuntu-Debian based Linux distributions!
\033[0m"
exit 1
fi
apt update -y
apt upgrade -y
sleep 1
echo -e "\033[1;31m
Installing packages...\033[01;32m"
sleep 1
apt-get install -y git
apt-get install -y python3
apt-get install -y python3-pip
apt-get install -y php-curl
apt-get install -y php-xml
apt-get install -y default-jdk
apt-get install -y tor
apt-get install -y pipx
mv telari telari.sh

echo -e "\033[1;31m
Installing RDDoS ...\e[0;32"
sleep 1
git clone https://github.com/Red-company/RDDoS_Tool.git
cd RDDoS_Tool
python3 -m pip install --upgrade pip > /dev/null 2>&1
pip install tqdm > /dev/null 2>&1
pip install pyfiglet==0.7 > /dev/null 2>&1
bash ./setup.sh
cd ..
clear

echo -e "\033[1;31m
Installing Instashell...\033[01;32m"
sleep 1
git clone https://github.com/maxrooted/instashell.git

echo -e "\033[1;31m
Installing Cupp...\033[01;32m"
sleep 1
git clone https://github.com/Mebus/cupp
cd cupp
chmod +x cupp.py
cd ..

echo -e "\033[1;31m
Installing Seeker...\033[01;32m"
sleep 1
git clone https://github.com/thewhiteh4t/seeker.git
cd seeker/
chmod +x install.sh
./install.sh
cd ..

echo -e "\033[1;31m
Installing PyPhisher...\033[01;32m"
sleep 1
git clone https://github.com/KasRoudra2/PyPhisher
cd PyPhisher
pip3 install -r files/requirements.txt
cd ..

echo -e "\033[1;31m
Installing Userrecon...\033[01;32m"
sleep 1
git clone https://github.com/wishihab/userrecon.git

echo -e "\033[1;31m
Installing Enogh...\033[01;32m"
sleep 1
git clone https://github.com/tingirifistik/Enough-Reborn.git
cd Enough-Reborn
pip3 install -r requirements.txt

echo -e "\033[1;31m
Installing CamPhish...\033[01;32m"
git clone https://github.com/techchipnet/CamPhish

cd ..
clear
notify-send Necessary\ packages\ for\ Telari\ have\ been\ installed!
echo -e "\033[1;31m
Necessary packages installed
\033[01;32mYou can run Telari with this command: \033[01;35mbash ./telari.sh --shell\033[00m"