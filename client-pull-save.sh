#!bin/bash

echo "scp of the wordpress files to the computer"
scp -r root@***.***.***.***:/root/save/*.wpress /home/kam/Bureau/

echo "*.wpress has been recovered"

echo "Cleaner initiating"
ls -tp | grep -v '/$' | tail -n +11 | xargs -I {} rm -- {}

echo "Cleaner is done, only 10 elements remains"
echo "Part 3 on 3 is done"
