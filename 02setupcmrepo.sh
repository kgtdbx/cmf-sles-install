#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
    echo begin | ssh root@$node "zypper --non-interactive addrepo -f https://archive.cloudera.com/cm5/sles/11/x86_64/cm/cloudera-manager.repo; zypper --gpg-auto-import-keys refresh;"
	 
    
   echo END $node
   echo ""

done < nodes
