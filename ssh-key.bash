#!/bin/bash

read -p "Access Key ID is $AWS_ACCESS_KEY_ID. Enter new one: " accesskey
export AWS_ACCESS_KEY_ID=${accesskey}
echo "New Access Key ID is $AWS_ACCESS_KEY_ID"

read -p "Secret Access Key is $AWS_SECRET_ACCESS_KEY. Enter new one: " secret
export AWS_SECRET_ACCESS_KEY=${secret}
echo "New Secret Access Key is $AWS_SECRET_ACCESS_KEY"

aws ec2 import-key-pair --key-name ll-key --public-key-material $(base64 /home/cloud_user/.ssh/luis-key.pub | tr -d '\n')
