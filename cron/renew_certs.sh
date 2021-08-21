#!/bin/sh

#ahmetcan.com.tr
#21.08.2021

cd /workdir
echo "Renewing Let's Encrypt Certificates... (`date`)"
docker-compose run --entrypoint certbot certbot renew
echo "Reloading Nginx configuration"
docker-compose exec -T nginx nginx -s reload
