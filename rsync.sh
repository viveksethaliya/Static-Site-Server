#!/bin/bash
sudo rsync -avz --out-format="%n" vivek@172.30.43.199:/home/vivek/www/ /var/www/mysite/
