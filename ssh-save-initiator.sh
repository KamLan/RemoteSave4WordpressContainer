#!bin/bash

ip='***.***.***.***'

echo "Connection to the server host & script execution"
ssh root@$ip bash /root/save/sdc-save.sh

echo "Part 1 on 3 is done"
