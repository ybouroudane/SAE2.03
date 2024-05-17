apt update
apt install vsftpd
useradd -m sftp
echo sftp:test1234 | chpasswd
cp /shared/sf_vsftpd.conf /etc/vsftpd.conf
service vsftpd start
iptables -A INPUT -p tcp --dport 22 --source 172.16.192.2 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
rm /root/sf_sftp.sh
