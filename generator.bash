#! /bin/bash
WORK_DIR=$(cd $(dirname $0); pwd);

if [ ! -d "$WORK_DIR/tmp" ];then
  mkdir $WORK_DIR/tmp
fi

curl -s https://raw.githubusercontent.com/soffchen/GeoIP2-CN/release/CN-ip-cidr.txt -o $WORK_DIR/tmp/all_cn.txt && \
cat > $WORK_DIR/dist/cn_ip_cidr.rsc << EOF
/log info "Import cn ipv4 cidr list..."
/ip firewall address-list remove [/ip firewall address-list find list=cn_ip_cidr]
/ip firewall address-list
EOF
cat $WORK_DIR/tmp/all_cn.txt | awk '{ printf(":do {add address=%s list=cn_ip_cidr} on-error={}\n",$0) }' >> $WORK_DIR/dist/cn_ip_cidr.rsc
