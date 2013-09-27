#!/bin/bash

# File name: binit.sh
# Script: Clean unwanted files, logs ...etc.
# Auther: Mustafa Albazy
# Date: 19/10/2009
# Version: 1.0b
#
# Email: mustafa@albazy.com
# Blog:  WWW.ALBAZY.COM

   
# variables
DOMLOGS="/usr/local/apache/domlogs"
HTTPDLOGS="/usr/local/apache/logs"
HTDOCS="/usr/local/apache/htdocs/cpmove-*.tar.gz"
CPMHOME="/home/cpmove-*.tar.gz"
CPRES="/home/cprestore"
CLEANTMP="/tmp"
VARLOG="/var/log"
EXIM="/var/spool/exim"
VAREACC="/var/cache/eaccelerator"


   
# 2- check privileges
if [ `whoami` == "root" ];
    then
        echo "> Hello there,"
		echo ">"
		echo "> Starting.......................ok"
        echo "> root privileges checked........ok"
        echo "> ...................ready to start"
        echo "> START NOW......................ok"
        echo ">                #############################"
        echo ">                #######              ########"
	    echo ">                ####  [ BIN IT START ]   ####"
        echo ">                #######              ########"
	    echo ">                #############################"
		echo ".............................................."
		echo "................................."
		echo "....................."
		echo ".........."
	
	    # 3- Clean Domain Logs
		if [ ! -d "$DOMLOGS" ];
		    then
                echo "#########################################"
                echo "# Domain Logs Error:                    #"
                echo "# There is a problem. Domain Logs does  #"
                echo "# not exists. Any way I will skip.      #"
                echo "#########################################"
				echo "........"
			    echo "........"
			    echo "........"
            else
            	rm -rf $DOMLOGS/*
                echo "#############################"
                echo "#   Domain Logs Cleaned     #"
                echo "#   Domain Logs Cleaned     #"
                echo "#   Domain Logs Cleaned     #"
                echo "#############################"
				echo "........"
			    echo "........"
			    echo "........"				
		fi
	        
        # 4- Clean HTTPd Logs     
	    if [ ! -d "$HTTPDLOGS" ];
		    then
                echo "#########################################"
                echo "# HTTPd Logs Error:                     #"
                echo "# There is a problem. HTTPd Logs does   #"
                echo "# not exists. Any way I will skip.      #"
                echo "#########################################"
				echo "........"
			    echo "........"
			    echo "........"
            else
				rm -rfv $HTTPDLOGS/access_log; rm -rfv $HTTPDLOGS/error_log; rm -rfv $HTTPDLOGS/modsec_audit.log; rm -rfv $HTTPDLOGS/modsec_debug_log; 
				touch $HTTPDLOGS/access_log; touch $HTTPDLOGS/error_log; touch $HTTPDLOGS/modsec_audit.log; touch $HTTPDLOGS/modsec_debug_log; 
				chown 640 $HTTPDLOGS/modsec_audit.log; chown 640 $HTTPDLOGS/modsec_debug_log;
				echo "............done..........done"
				echo "Now recreate new log files............"
			    echo "....................done........done."
				echo "#############################"
                echo "#    HTTPd Logs Cleaned     #"
                echo "#    HTTPd Logs Cleaned     #"
                echo "#    HTTPd Logs Cleaned     #"
                echo "#############################"
				echo "........"
			    echo "........"
			    echo "........"
		fi
		
		# 5- Clean cpmove-(user).tar.gz if any in /usr/../htdcos
		if [ ! -f "$HTDOCS" ];
		    then
			    echo "###########################################################################"
			    echo "# I didn't found any cpmove-(name).tar.gz in /usr/../htdcos to deleted.   #"
				echo "# OK, don't care about it. I will skip                                    #"
				echo "###########################################################################"
				echo "........"
			    echo "........"
			    echo "........"
		    else
			    rm -rfv $HTDOCS
				echo "#####################################################"
				echo "#                                                   #"
				echo "#  cpmove-(name).tar.gz in /usr/../htdcos cleanded  #"
				echo "#                                                   #"
				echo "#####################################################"
				echo "........"
			    echo "........"
			    echo "........"
	    fi
	 
		# 6- Clean cpmove in /home/ if any 
		if [ ! -f "$CPMHOME" ]; 
		    then
				echo "###########################################################################"
			    echo "# I didn't found any cpmove-(name).tar.gz in /home/ to deleted.           #"
				echo "# OK, don't care about it. I will skip                                    #"
				echo "###########################################################################"
				echo "........"
			    echo "........"
			    echo "........"
			else
			    rm -rfv $CPMHOME
				echo "#####################################################"
				echo "#                                                   #"
				echo "#     cpmove-(name).tar.gz in /home/ cleanded       #"
				echo "#                                                   #"
				echo "#####################################################"
				echo "........"
			    echo "........"
			    echo "........"
	    fi
            
        # 7- Clean /home/cprestore if have any files
        if [ ! -f "$CPRES" ];
            then
                echo "###########################################################################"
			    echo "# I didn't found any files/directory in /home/cprestore to deleted.       #"
				echo "# OK, don't care about it. I will skip                                    #"
				echo "###########################################################################" 
				echo "........"
			    echo "........"
			    echo "........"				

            else
			    rm -rfv $CPRES/*
				echo "#####################################################"
				echo "#                                                   #"
				echo "#           /home/cprestore/* cleanded              #"
				echo "#                                                   #"
				echo "#####################################################"
				echo "........"
			    echo "........"
			    echo "........"				
        fi		
		
		# 8- Clean tmp
		if [ ! -d "$CLEANTMP" ];
		   then
				echo "#############################"
				echo "# TMP Eroor:                #"
				echo "# There is a problem, /tmp  #"
				echo "# does not exists.          #"
				echo "#############################"
				echo "........"
			    echo "........"
			    echo "........"	
			else
                rm -rf $CLEANTMP/*
				echo "#################"
				echo "#  TMP CLEANED  #"
				echo "#  TMP CLEANED  #"
				echo "#  TMP CLEANED  #"
				echo "#################"
				echo "........"
			    echo "........"
			    echo "........"				
		fi

        # 9- Clean  /var/log   		
	    if [ ! -d "$VARLOG" ];
		    then
                echo "##########################################"
                echo "# Var Logs Error:                        #"
                echo "# There is a problem. Var Logs does does #"
                echo "# not exists. Any way I will skip.       #"
                echo "##########################################"
				echo "........"
			    echo "........"
			    echo "........"
            else
				rm -rfv $VARLOG/boot.log.*; rm -rfv $VARLOG/btmp; rm -rfv $VARLOG/cpanel-install-thread*; rm -rfv $VARLOG/cron.*; 
			    rm -rfv $VARLOG/exim_mainlog.*; rm -rfv $VARLOG/exim_paniclog.*; 
			    rm -rfv $VARLOG/exim_rejectlog.*; rm -rfv $VARLOG/lfd.log.*; rm -rfv $VARLOG/maillog.*; 
				rm -rfv $VARLOG/messages.*; rm -rfv $VARLOG/php.log; rm -rfv $VARLOG/secure.*; 
				rm -rfv $VARLOG/spoole*; rm -rfv $VARLOG/wtmp; rm -rfv $VARLOG/yum.lo*; 
				rm -rfv $VARLOG/stunnel-4.15-build.l*; rm -rfv $VARLOG/bandwidth/*; 
			    rm -rfv $VARLOG/sa/*; rm -rfv $VARLOG/clamav/freshclam.log.*; rm -rfv $VARLOG/audit/audit.log.*; 
			    rm -rfv $VARLOG/dcpumon/boot*; rm -rfv $VARLOG/dcpumon/toplog*; 
				rm -rfv $VARLOG/rpmpkgs*; rm -rfv $VARLOG/conman.ol*; rm -rfv $VARLOG/chkservd*; rm -rfv $VARLOG/up2dat*; 
				rm -rfv $VARLOG/clam-update.*; rm -rfv $VARLOG/apf_log*; rm -rfv $VARLOG/anaconda*; rm -rfv $VARLOG/arcconfig*; 
				echo "............done..........done"
				echo "Now recreate new log files............"
			    echo "..........................."
				touch $VARLOG/btmp; touch $VARLOG/spooler; touch $VARLOG/wtmp; touch $VARLOG/yum.log; 
				touch $VARLOG/chkservd.log; touch $VARLOG/up2date; 
				touch $VARLOG/anaconda.log; touch $VARLOG/anaconda.syslog; 
				touch $VARLOG/arcconfig.xml; touch $VARLOG/php.log; 
				chown root:utmp $VARLOG/btmp; chown root:utmp $VARLOG/wtmp; 
				chmod 600 $VARLOG/btmp; chmod 600 $VARLOG/spooler; chmod 664 $VARLOG/wtmp; chmod 600 $VARLOG/anaconda.log; 
				chmod 600 $VARLOG/anaconda.syslog; chmod 777 $VARLOG/php.log;
			    echo "..........................."
			    echo "...........................done.................done."
				echo "#####################################################"
				echo "# /VAR/LOG Cleaner:                                 #"
				echo "# /VAR/LOGS Cleaned. I also recreate some logs file #"
				echo "# with there OwnerShips and Permission.             #"
				echo "#####################################################"
				echo "........"
			    echo "........"
			    echo "........"
        fi
		
		#  10- Clean exim
		if [ ! -d "$EXIM" ];
		    then
                echo "############################################"
                echo "# Exim Logs Error:                         #"
                echo "# There is a problem. Exim Logs does does  #"
                echo "# not exists. Any way I will skip.         #"
                echo "############################################"
				echo "........"
			    echo "........"
			    echo "........"
			else
                rm -rf $EXIM/input/*
				rm -rf $EXIM/msglog/*
				echo "########################"
				echo "#  Exim Logs Cleaned   #"
				echo "#  Exim Logs Cleaned   #"
				echo "#  Exim Logs Cleaned   #"
				echo "########################"	
				echo "........"
			    echo "........"
			    echo "........"	
		fi

		# 11- Clean eaccelerator cache if in default path
        if [ ! -d "$VAREACC" ];
            then
                echo "#######################################################"
				echo "# Eaccelerator cache cleaner:                         #"
                echo "# Eaccelerator cache not in default path              #" 
				echo "# or not installed. I will skip                       #"
                echo "#######################################################"
				echo "........"
			    echo "........"
			    echo "........"
            else
                rm -rf $VAREACC/*
                echo "#######################################################"
				echo "#                                                     #"
                echo "#            eaccelerator cache cleaned               #" 
				echo "#                                                     #"
                echo "#######################################################"
				echo "........"
			    echo "........"
			    echo "........"
        fi

    # Done, restart and Exit
	echo "......"
	echo "......"
	echo "......"
	echo "......"
	echo "...................................Now Restart (apache, exim and mysql) service"
	echo "......"
	echo "Restarting HTTPd (Apache)"
    echo "......"
    service httpd restart
	echo "......"
    echo "Done..................................Done"
	echo "......"
	echo "Restarting Exim"
	echo "......"
    service exim restart
	echo "......"
    echo "Done..................................Done"
	echo "......"
	echo "Restarting MySQL"
	echo "......"
    service mysql restart
    echo "......"
    echo "......"
    echo "Done..................................Done"
    echo "........"
    echo "........"
	echo "..........................."
	echo "..............................................................................."
	echo "................................................."
    echo "........"
    echo "Done...."	
    echo "Done...."
	echo "Done...."	
    echo "Done...."
    echo "........"
    echo "........"
    echo "........"
	echo "## Bin It ##################################################"
	echo "# ..................DONE.............DONE....DONE.....     #"
	echo "# .......Everything Cleaned!                               #"
	echo "#                                                          #"
	echo "# Bin It By: Mustafa Albazy                                #"
	echo "# Version: 1.0b                                            #"
	echo "# Contact With Me: Mustafa@Albazy.Com                      #"
	echo "# My Blog: WWW.ALBAZY.COM or WWW.ALBAZY.NET                #"
	echo "################################################## Bin It ##"
	echo "......"
    echo "......"
    echo "Bye:)."
	
	else
	    echo "# Check privilege #########################"
		echo "#               OOOOPS!                   #"
		echo "#        Sorry, i can't start             #"
		echo "#         you should be root              #"
		echo "###########################################"
        exit 0;
		
fi;
