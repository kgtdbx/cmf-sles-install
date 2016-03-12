#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
    scp dbsql.sh root@$node:/root/dbsql.sh
    echo begin | ssh root@$node "chmod a+x /root/dbsql.sh;/root/dbsql.sh"
	 
    
   echo END $node
   echo ""

done < nodes
