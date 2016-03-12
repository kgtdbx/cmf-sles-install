#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
    echo begin | ssh root@$node "sudo zypper --non-interactive install oracle-j2sdk1.7"
	 
    
   echo END $node
   echo ""

done < nodes
