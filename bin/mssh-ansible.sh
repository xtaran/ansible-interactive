#!/bin/sh

. $(dirname $(realpath $0))/../lib/follow-symlink-chain.inc.sh

if [ -z "$1" ]; then
    set -- all
fi
ansible-playbook -l $(echo "$@" | sed -e 's/ /,/g') mssh.yml
