#!/bin/bash

while read node
do
   echo ""
   echo BEGIN $node

   #commands go here
    echo begin | ssh root@$node "/usr/share/cmf/schema/scm_prepare_database.sh mysql cm cm cm"
	 
    
   echo END $node
   echo ""

done < nodes
