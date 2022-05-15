# Alana on premise private servers config

This repository contains the Ansible playbooks to install the basic setup of Alana servers.

O.S. setup until now:

- Ubuntu 20 x64/arm64

---

### Run on your server

- Clone the repository
- Change group_vars if necessary
- Copy the files in ./files without the .example:
  - you can run: ```for i in ./files/*.example; do cp -i "$i" "${i%.example}"; done```
- Run ```rg CHANGEME ./group_vars ./files/01-custom ./files/50-cloud-init.yaml ./files/hostname``` in order to find what you need to change.
- Copy this repo to your server: ```scp -r alana-servers-config ubuntu@<ip>:/tmp/alana-servers-config/```
- SSH into your server and run init-server.sh to intall ansible using pip3.
- Run the playbook: ```ansible-playbook entrypoint.yml``` or ```ansible-playbook entrypoint.yml --skip-tags "users, tools, ..."```

---

### Run on Vagrant VM (WIP)

```sh
VAGRANT_VAGRANTFILE=Vagrantfile.ubuntu20_x64 vagrant up
```

Access vagrant box:

```sh
vagrant ssh
cd /vagrant
ansible-playbook entrypoint.yml
```

Access with your user:

```sh
ssh yourUser@127.0.0.1 -p 2222
```

```sh
make vagrant-destroy
```


