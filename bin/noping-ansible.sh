#!/bin/sh

cd "$(dirname $(readlink -f $0))/.."
if [ -z "$1" ]; then
    set -- all
fi
ansible-playbook -l $(echo "$@" | sed -e 's/ /,/g') noping.yml
