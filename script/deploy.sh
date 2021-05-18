#!/bin/bash
target_hosts=("test")

for host in ${target_hosts[@]};do
        echo "`date` deploy $host"
        echo "backup"
        ssh root@$host "mv /usr/hdp/2.6.5.0-292/spark2/jars/hive-metastore-1.21.2.2.6.5.0-292.jar /usr/hdp/2.6.5.0-292/spark2/jars/hive-metastore-1.21.2.2.6.5.0-292.jar.bak"
        echo "replace"
        scp ../metastore/target/hive-metastore-1.21.2.2.6.5.0-292.jar root@$host:/usr/hdp/2.6.5.0-292/spark2/jars/hive-metastore-1.21.2.2.6.5.0-292.jar
done


