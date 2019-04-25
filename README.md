# binit

**BinIt** help cPanel system administrators to clean servers from old heavy and/or unused logs, migration cPanel user packages and much more in a simple CLI command (by ssh terminal).

## How to use ?

1. Clone this repo into your server, for example in /root 
2. $ `cd cloned_repo`
3. $ `chmod +x binit.sh`
3. $ `./binit.sh`

$ = stand for ssh terminal


## What exactly this tool do ?
When you start this tool, it will clean the following

* Clean domain logs in /usr/local/apache/domlogs
* Clean Apache HTTPd logs in /usr/local/apache/logs
* Delete any cpmove-*.tar.gz in /usr/local/apache/htdocs/ and /home/ and /home/cprestore
* Clean old and unused logs in /var/log
* Refresh eaccelerator chached files in /var/cache/eaccelerator
* Clean /tmp and /var/spool/exim
* Restart related services 

## What license ?
GNU GENERAL PUBLIC LICENSE v3

Read about this license: https://github.com/mustafaalbazy/binit-v1/blob/master/LICENSE
