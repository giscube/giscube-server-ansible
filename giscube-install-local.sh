#! /bin/sh
DIR=$(cd $(dirname "$0"); pwd)
cd $DIR
echo "* Executing script from $DIR"
echo

. $PWD/envvars.sh
echo "* Installing dependencies"
sh install-deps.sh
echo

echo "* Installing giscube using ansible"
ansible-playbook giscube.yml
