#! /bin/sh
echo "- Install python-pip"
apt-get install -q -y python-pip python-dev libffi-dev libssl-dev
echo "- Install ansible globally"
pip -q -U install ansible setuptools
echo "- Install markupsafe globally"
pip install markupsafe
echo "- Install required roles from ansible galaxy"
ansible-galaxy install -r requirements.yml -p ./roles/
