#!/bin/bash

dir_path=$(pwd)

echo Project Name: 
read project

echo Database Name:
read database_name

echo Author: 
read author_name

echo Description:
read project_description

echo Default Secret Key: 
read secret

echo Default Port: 
read port

source="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

playbook="$source/playbook.yml"

ansible-playbook $playbook -e "project_name='$project' author='$author_name' path='$dir_path' description='$project_description' secret_key='$secret' database='$database_name' default_port='$port' source_dir='$source'"
