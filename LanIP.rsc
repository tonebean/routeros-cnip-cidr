/ip firewall address-list
remove [/ip firewall address-list find list=cn_ip_cidr]
add address=10.0.0.0/8 list=cn_ip_cidr comment=LanIP
add address=172.16.0.0/12 list=cn_ip_cidr comment=LanIP
add address=192.168.0.0/16 list=cn_ip_cidr comment=LanIP
