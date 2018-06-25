# RemoteSave4WordpressContainer

Bash script for automated save of a wordpress container's backups / plugin: all in one wordpress migration / wp-cli

These scripts allow the user to save a wordpress container backups 
---

* ssh-save-initiator.sh: connect to the ssh server and start the sdc-save-onserver.sh

* sdc-save-onserver.sh: script on distant server launch backup on container and copy it on server

* client-pull-save.sh: download the backup file and keep a limited number of backup in the file
