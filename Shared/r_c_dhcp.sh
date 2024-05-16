apt update
apt upgrade
apt install isc-dhcp-server
cp /shared/r_c_dhcpd.conf /etc/dhcp/dhcpd.conf
cp /shared/r_c_isc-dhcp-server /etc/default/isc-dhcp-server
service isc-dhcp-server start
rm /root/r_c_dhcp.sh
