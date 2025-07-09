FROM prestashop/prestashop:8.1   # same tag as compose

RUN apt-get update && apt-get install -y zip unzip cron \
 && rm -rf /var/lib/apt/lists/*

COPY modules/ /var/www/html/modules
COPY themes/  /var/www/html/themes
