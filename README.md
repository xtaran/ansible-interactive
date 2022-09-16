Ansible Playbooks for Interactive Tools
=======================================

Description
-----------

This repository contains Ansible playbooks to call interactive tools
for Ansible host groups.

So far supported:

* [`mssh`](http://hgarcia.es/)
* [Liboping](https://noping.cc/)'s `oping` and `noping`

All scripts so far open a separate window. (Even the TUI tool `noping`
opens a new xterm window, because Ansible doesn't pass the terminal to
its called commands and because you usually want rather small fonts
anyway.)

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

Requirements
------------

* A host which can run your Ansible playbooks and which can run X11
  applications.
* [Ansible](https://www.ansible.com/) of course, probably version 2.7
  upwards, tested with 2.10.
* [`mssh`](http://hgarcia.es/) and [Liboping](https://noping.cc/) (aka
  `oping` or `noping`) for the according playbooks.
* `noping.yml` also requires
  [`xterm`](https://invisible-island.net/xterm/xterm.html) to be
  installed as well.

Installation
------------

There is no installation routine yet.

What works is symlinking the `bin/` directory (or the files in it) and
the `*.yml` playbooks into your playbook, and then linking the scripts
in the `bin/` directory in your playbook directory to somewhere in
your search path `$PATH`.
