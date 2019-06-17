#!/usr/bin/env bash
mvn clean package

echo 'Copy files...'

scp -i ~/ssh_keys kapshii_andrii@35.198.157.156 \
    target/santander-1.3.1.jar \
    kapshii_andrii@35.198.157.156:/home/kapshii_andrii/

echo 'Restart server...'

ssh -i ssh_keys kapshii_andrii@35.198.157.156 <<EOF
pgrep java | xargs kill -9
nohup java -jar santander-1.3.1.jar > log.txt &
EOF

echo 'Bye'
#jps -l | grep JARNAME.jar | awk '{print \$1}' | xargs kill -9﻿