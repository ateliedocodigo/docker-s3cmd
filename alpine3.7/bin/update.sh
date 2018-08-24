#!/bin/sh

echo "Current Version:" $S3CMD_CURRENT_VERSION
if [ ! -z $S3CMD_VERSION ]; then
    echo "Wanted version: " $S3CMD_VERSION
fi

if [ ! -z $S3CMD_CURRENT_VERSION ] && [ ! -z $S3CMD_VERSION ] && [ $S3CMD_CURRENT_VERSION != $S3CMD_VERSION ]; then
    echo "Version differ"
    set -x
    wget -T 10 https://github.com/s3tools/s3cmd/releases/download/v${S3CMD_VERSION}/s3cmd-${S3CMD_VERSION}.zip -P /opt/
    unzip -o /opt/s3cmd-${S3CMD_VERSION}.zip -d /opt
    ln -fs /opt/s3cmd-${S3CMD_VERSION}/s3cmd /usr/bin/s3cmd
    rm /opt/s3cmd-${S3CMD_VERSION}.zip
    set +x
fi
