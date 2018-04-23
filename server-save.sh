#!bin/bash

echo "Copy of the wordpress files"
docker cp wpbaptiste_wordpress_1:/var/www/html/ /root/save/Baptiste/
docker cp sharedatcode_wordpress_1:/var/www/html/ /root/save/SDC/

echo "Dump of the database"
docker exec wpbaptiste_mysql_1 sh -c 'exec mysqldump -u root -psecret  wordpress' > /root/save/Baptiste/dumpBaptiste.sql
docker exec sharedatcode_mysql_1 sh -c 'exec mysqldump -u root -psecret wordpress' > /root/save/SDC/dumpSDC.sql
