path=$(pwd)

echo Project Name: 
read project

echo Database Name:
read database

echo Author: 
read author

echo Description:
read description

echo Default Secret Key: 
read secret

echo Default Port: 
read port

source="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

playbook="$source/playbook.yml"

ansible-playbook $playbook -e "project_name=$project author=$author path=$path description=$description secret_key=$secret database=$database default_port=$port source_dir=$source"
