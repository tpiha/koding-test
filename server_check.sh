#!/bin/bash

FILE_EXISTS_PATH=${1:-/var/log/aptitude}
FILE_CONTENT_PATH=${2:-/var/log/popularity-contest}
FILE_CONTENT_CONTENT=${3:-module-init-tools}
PROCESS=${4:-postgres}

ansible-playbook koding.yml -i servers -e "file_exists_path=$FILE_EXISTS_PATH file_content_path=$FILE_CONTENT_PATH file_content_content=$FILE_CONTENT_CONTENT process=$PROCESS"
