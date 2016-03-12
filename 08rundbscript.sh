#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
   scp primary-my.cnf root@$node:/etc/my.cnf

   echo begin | ssh root@$node "rm /var/lib/mysql/ib_logfile0;rm  /var/lib/mysql/ib_logfile1; sudo zypper --non-interactive install mysql-connector-java;sudo service mysql start"
    
    
   echo END $node
   echo ""

done < nodes
