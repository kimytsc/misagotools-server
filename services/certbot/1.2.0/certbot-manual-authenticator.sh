#!/bin/bash

# if [ -f /tmp/certbot-dnsmasq.pid ]; then
# 	kill $(cat /tmp/certbot-dnsmasq.pid)
# fi

# if [ ! -f /tmp/certbot-dnsmasq.conf ]; then
# 	echo "pid-file=/tmp/certbot-dnsmasq.pid
# strict-order
# no-resolv
# no-hosts" > /tmp/certbot-dnsmasq.conf
# fi

# echo "txt-record=_acme-challenge.$CERTBOT_DOMAIN,\"$CERTBOT_VALIDATION\"" >> /tmp/certbot-dnsmasq.conf
# dnsmasq -C /tmp/certbot-dnsmasq.conf

echo "txt-record=_acme-challenge.$CERTBOT_DOMAIN,\"$CERTBOT_VALIDATION\"" > /etc/dnsmasq/0.certbot.conf
docker exec dnsmasq dnsmasq -C /etc/dnsmasq/0.certbot.conf