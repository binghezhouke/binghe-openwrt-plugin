#!/bin/sh
/bin/sh /bin/gfwlist2dnsmasq.sh --insecure -d 127.0.0.1 -p 5353 -s gfwlist --exclude-domain-file /etc/config/bh_w.lst --extra-domain-file /etc/config/bh.lst -o /etc/dnsmasq.d/dnsmasq_gfwlist_ipset.conf 
echo "before restart dns"
/etc/init.d/dnsmasq restart
/usr/sbin/ipset flush gfwlist
echo "done"
