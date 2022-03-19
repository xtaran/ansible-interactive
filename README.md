Ansible Playbooks for Interactive Tools
=======================================

Description
-----------

Playbooks to call interactive tools for Ansible host groups. So far
[`mssh`](http://hgarcia.es/) and [Liboping](https://noping.cc/)'s
`noping` are supported. All scripts so far open a separate window.

You can pass any host group you've defined in Your Ansible `hosts`
file to these scripts as parameters, separated by blanks as usual on
Unix. If no parameter is passed, the generic Ansible host group `all`
is expected.

Synopsis
--------

```
mssh-ansible.sh
mssh-ansible.sh all
noping-ansible.sh
noping-ansible.sh all

mssh-ansible.sh debian rhel
noping-ansible.sh webserver dbserver
```

Dependencies
------------

* [Ansible](https://www.ansible.com/) of course, probably version 2.7
  upwards, tested with 2.10.
* [`mssh`](http://hgarcia.es/) and [Liboping](https://noping.cc/) (aka
  `oping` or `noping`) for the according playbooks.
* `noping.yml` also requires
  [`xterm`](https://invisible-island.net/xterm/xterm.html) to be
  installed as well.

Installation
------------

There is no installation routine yet. What works is copying the `bin/`
directory (not only the files in it) and the `*.yml` playbooks into
your playbook.

Symlinks for the playbooks will work, but for the scripts it's
currently expected that there symlink target is in a first-level
subdirectory (usually `bin`, but can be named differently) of where
your Ansible playbooks and `hosts` file is located.
