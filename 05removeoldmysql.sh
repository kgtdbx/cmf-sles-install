#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
    echo begin | ssh root@$node "sudo zypper --non-interactive remove mysql mysql-client"
	 
    
   echo END $node
   echo ""

done < nodes
