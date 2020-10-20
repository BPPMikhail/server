#!/bin/bash

while :;
do
	#java -Dfile.encoding=UTF-8 -cp config;./* -Xmx1G -Xnoclassgc -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=7456 l2.gameserver.GameServer > log/stdout.log 2>&1
	java -server -Dfile.encoding=UTF-8 -Xmx32000m -cp config:./* l2.gameserver.GameServer > log/stdout.log 2>&1
	
	[ $? -ne 2 ] && break
	sleep 30;
done

