#!/bin/bash

#########################################################
# Author: vikrant
# Date: 15/09/2024
#
# Version: v1
#
# This Script will report the AWs resource usage
# ##########################################################
#
# AWS S3
# AWS EC2
# AWS Lamda
# AWS IAM User

set -x

#list S3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list Ec2 Instance
echo "print ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "print lambda fuctions"
aws lambda list-functions

#list IAM users
echo "print IAM users"
aws iam list-users

~
~
~
~
~
~
