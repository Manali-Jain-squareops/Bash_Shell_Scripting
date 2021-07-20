#!/bin/bash

set -e

BUCKET_NAME=mongobackup
BACKUP_NAME=$(date +%y%m%d_%H%M%S).gz
DB=Course

date
echo "MongoDB Backup to AWS S3 Bucket: $BUCKET_NAME"

echo "Dumping MongoDB $DB database to compressed archive"
sudo mongodump --db $DB --archive=./backup/$BACKUP_NAME --gzip

echo "Moving compressed archive to AWS S3: $BUCKET_NAME"
sudo aws s3 mv /home/ubuntu/backup/$BACKUP_NAME s3://$BUCKET_NAME/$BACKUP_NAME

echo 'Backup complete!'

