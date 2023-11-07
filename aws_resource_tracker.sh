#!/bin/bash

##################
#Author: Suman
#Date: 7th-Sep-2023
#Version: v1
#This script will report AWS resource usage
##################
set -x

#AWS S3
#AWS EC2

#List S3 buckets
echo "Printng list of s3 buckets"
aws s3 ls >> resourceTracker

#list EC2 Instance
echo "Printing ec2 instances"
aws ec2 describe-instances| jq '.Reservations[].Instances[].InstanceId' >> resourceTracker
