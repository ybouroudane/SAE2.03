useradd -m -s /bin/bash admin
echo admin:test1234 | chpasswd
apt update
apt upgrade
apt install openssh-server
service ssh restart
rm /root/pcb_ssh.sh
