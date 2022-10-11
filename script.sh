#!/bin/bash

set -xe

if_no_zero_function()
{
	if [ $? -ne 0 ]; then
		echo "$1"
		exit 1
        fi
}

user_dir=$1
user_name=$2
user_date=`date +"%d-%m-%Y"`
mkdir -p ${user_dir}
my_file=$PWD/${user_name}-${user_date}
w > $my_file && gzip $my_file
if_no_zero_function 'Command failed'
