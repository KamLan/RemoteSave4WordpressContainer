#!/bin/bash

echo "run backup on sdc server"
docker exec sdc_wordpress_1 sh -c "wp ai1wm backup --allow-root"

savepath="$(docker exec sdc_wordpress_1 sh -c "ls wp-content/ai1wm-backups/ -tr | tail -n 1")"
echo $savepath

docker cp sdc_wordpress_1:/var/www/html/wp-content/ai1wm-backups/$(echo $savepath) /root/save/

echo "Part 2 on 3 is done"
