#!bin/bash

echo "Copy of the wordpress files"
docker cp wpbaptiste_wordpress_1:/var/www/html/ /root/save/

echo "Dump of the database"
docker exec wpbaptiste_mysql_1 sh -c 'exec mysqldump -u root -psecret  wordpress' > /root/save/dump.sql