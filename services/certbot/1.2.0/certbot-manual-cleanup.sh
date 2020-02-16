#!/bin/bash
# if [ -f /tmp/certbot-dnsmasq.pid ]; then
# 	kill $(cat /tmp/certbot-dnsmasq.pid)
# 	rm -f /tmp/certbot-dnsmasq.pid
# 	rm -f /tmp/certbot-dnsmasq.conf
# fi

echo "" > /etc/dnsmasq/0.certbot.conf
docker exec dnsmasq dnsmasq -C /etc/dnsmasq/0.certbot.conf