#! /bin/sh

# make sure we have a valid locale
export LANG=C
export LC_ALL=POSIX

echo "- Install apt requirements"
apt-get install -y -q aptitude
echo "- Install python-pip"
apt-get install -q -y python-pip python-dev libffi-dev libssl-dev
echo "- Install ansible globally"
pip install -q -U ansible setuptools
echo "- Install required roles from ansible galaxy"
ansible-galaxy install -r requirements.yml -p ./roles/
