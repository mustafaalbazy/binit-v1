# binit

**BinIt** help cPanel system administrators to clean servers from old and unused logs, backups and much more in simple CLI command (by ssh terminal).

## How to use ?

1. Clone this repo into your server for ex in /root 
2. $ `cd cloned_repo`
3. $ `chmod +x binit.sh`
3. $ `./binit.sh`

$ = stand for ssh terminal


## What exactly this tool do ?
when you start this tool, it will clean the followin

* clean domain logs in /usr/local/apache/domlogs/
* clean Apache HTTPd logs in /usr/local/apache/logs/
* delete any cpmove-*.tar.gz in /usr/local/apache/htdocs/ and /home/ and /home/cprestore
* clean old and unused logs in /var/log/
* refresh eaccelerator chached files in /var/cache/eaccelerator
* clean /tmp and /var/spool/exim
* restart related services 

## What license ?
GNU GENERAL PUBLIC LICENSE v3

Read about this license: https://github.com/mustafaalbazy/binit-v1/blob/master/LICENSE
