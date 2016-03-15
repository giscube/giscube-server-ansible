#! /bin/sh
. $PWD/envvars.sh
sh install-deps.sh
ansible-playbook giscube.yml
