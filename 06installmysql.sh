#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
    echo begin | ssh root@$node "sudo wget http://repo.mysql.com//mysql-community-release-sles11-7.noarch.rpm;rpm -Uhv mysql-community-release-sles11-7.noarch.rpm; sudo rpm --import /etc/RPM-GPG-KEY-mysql; sudo zypper --non-interactive modifyrepo -e mysql56-community; zypper repos | grep mysql.*community; zypper repos -E | grep mysql.*community; sudo zypper --non-interactive install mysql-community-server libmysqlclient_r15 mysql-community-bench; service mysql stop; sudo chkconfig --add mysql"
	 
    
   echo END $node
   echo ""

done < nodes
