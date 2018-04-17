#!bin/bash

echo "scp of the wordpress files to the computer"
scp -r root@212.47.230.75:/root/save/html /home/kam/Bureau/save-wordpress/

echo "scp of the dump.sql file to the computer"
scp root@212.47.230.75:/root/save/dump.sql /home/kam/Bureau/save-wordpress/