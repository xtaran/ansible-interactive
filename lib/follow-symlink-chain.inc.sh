# This is a shell code snippet meant to be sourced, not a standalone
# shell script.

script=bin/$(basename $0);
cd $(dirname $0)/..;

echo "Checking for $(realpath -s hosts)"
while [ ! -r hosts ]; do
    link_target=$(readlink $script)
    if [ -n "$link_target" ]; then
        link_target=$(realpath -s "bin/$link_target")
        cd $(dirname "$link_target")/..
    else
        echo `pwd`"/$script is no symlink

and ./hosts exists in none of the directories in while recursively
following all symlinks since $0.

Bailing out."
        exit 1;
    fi
    echo "Checking for $(realpath -s ../hosts)"
done
