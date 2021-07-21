#!/bin/bash
echo '

┬┌─┌┐ ┬  ┬┌─   ╔═╗┌─┐┬  ┬  ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐
├┴┐├┴┐│  ├┴┐───║  │ ││  │  ├┤ │   │ ││ ││││└─┐
┴ ┴└─┘┴─┘┴ ┴   ╚═╝└─┘┴─┘┴─┘└─┘└─┘ ┴ ┴└─┘┘└┘└─┘

'
if [ "$EUID" -ne 0 ]
  then echo "Sorry $EUID,Please run as root"
  exit
fi
read -p "Install tools? (Y/n)" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit
fi
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add
echo "# Kali linux and its old repositories | Added Manually by kblk's script, delete Manually please before update and upgrade" >> /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
echo "deb http://old.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list
apt-get update
apt --fix-broken install -y  aircrack-ng
apt --fix-broken install -y  apktool
apt --fix-broken install -y  apparmor
apt --fix-broken install -y  armitage
apt --fix-broken install -y  automater
apt --fix-broken install -y  autopsy
apt --fix-broken install -y  backdoor-factory
apt --fix-broken install -y  bettercap
apt --fix-broken install -y  binwalk
apt --fix-broken install -y  burpsuite
apt --fix-broken install -y  cowpatty
apt --fix-broken install -y  crunch
apt --fix-broken install -y  dhcpd
apt --fix-broken install -y  dirb
apt --fix-broken install -y  dnsmap
apt --fix-broken install -y  dsniff
apt --fix-broken install -y  fierce
apt --fix-broken install -y  foxyproxy
apt --fix-broken install -y  fping
apt --fix-broken install -y  fragroute
apt --fix-broken install -y  fragrouter
apt --fix-broken install -y  git
apt --fix-broken install -y  gobuster
apt --fix-broken install -y  gparted
apt --fix-broken install -y  grub-customizer
apt --fix-broken install -y  hashcat    
apt --fix-broken install -y  hostapd
apt --fix-broken install -y  httrack
apt --fix-broken install -y  hydra
apt --fix-broken install -y  john
apt --fix-broken install -y  joomscan
apt --fix-broken install -y  jsql
apt --fix-broken install -y  lighttpd
apt --fix-broken install -y  lynis
apt --fix-broken install -y  macchanger
apt --fix-broken install -y  maltegoce
apt --fix-broken install -y  metasploit-framework
apt --fix-broken install -y  nessus
apt --fix-broken install -y  netcat
apt --fix-broken install -y  netdiscover
apt --fix-broken install -y  netmask
apt --fix-broken install -y  nikto
apt --fix-broken install -y  nmap
apt --fix-broken install -y  php-cgi
apt --fix-broken install -y  powersploit
apt --fix-broken install -y  proxychains
apt --fix-broken install -y  pwgen
apt --fix-broken install -y  python2
apt --fix-broken install -y  recon-ng
apt --fix-broken install -y  rfcat
apt --fix-broken install -y  sakis3g
apt --fix-broken install -y  skipfish
apt --fix-broken install -y  smbmap
apt --fix-broken install -y  snort
apt --fix-broken install -y  sqlmap
apt --fix-broken install -y  sslscan
apt --fix-broken install -y  steghide
apt --fix-broken install -y  theHarvester
apt --fix-broken install -y  traceroute
apt --fix-broken install -y  whatweb
apt --fix-broken install -y  whois
apt --fix-broken install -y  wifite
apt --fix-broken install -y  wireshark
apt --fix-broken install -y  wpscan
apt --fix-broken install -y  xterm
apt --fix-broken install -y  yersinia
apt install python python2 python3 python3-pip git -y
python3 -m pip install ciphey --upgrade
cd /opt; git clone https://github.com/SecureAuthCorp/impacket; python3 -m pip install .;
cd /opt; git clone https://github.com/wuseman/emagnet; chmod +x emagnet/emagnet.sh;
cd /opt; git clone https://www.github.com/FluxionNetwork/fluxion.git; chmod +x fluxion/fluxion.sh;
cd /opt; git clone https://github.com/rebootuser/LinEnum; chmod +x LinEnum/LinEnum.sh;
cd /opt; git clone https://github.com/LimerBoy/Impulse; cd Impulse/; pip3 install -r requirements.txt;
