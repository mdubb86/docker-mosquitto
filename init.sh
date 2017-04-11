#!/usr/bin/with-contenv /bin/bash
echo 'Initializing mosquitto'
printf '30 3 * * * certbot renew --noninteractive --post-hook "systemctl restart mosquitto\n"' | crontab

