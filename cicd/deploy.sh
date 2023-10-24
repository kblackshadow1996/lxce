#! /bin/bash

APP_NAME=dist.zip

echo "1.build dist"
cd .. && npm run build

echo "2.zip archive"
zip -q -r dist.zip ./dist

echo "3.upload archive"
sshpass -p "825685183Zhu!" scp ./cicd/$APP_NAME root@8.222.139.102:/usr/local/share/code/

echo "4.unzip archive"
sshpass -p '825685183Zhu!' ssh root@8.222.139.102 "bash -s" < ./cicd/start.sh