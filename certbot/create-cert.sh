#!/bin/bash

DOMAIN="asm.i9dados.com.br"
EMAIL="tportela3@gmail.com"

docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot \
  --email $EMAIL --agree-tos --no-eff-email \
  --force-renewal -d $DOMAIN -d www.$DOMAIN
