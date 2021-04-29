#! /usr/bin/env bash
hdfs dfs -ls /
accumulo init --instance-name $INSTANCE_NAME --user $USERNAME --password $PASSWORD
./bin/start-all.sh