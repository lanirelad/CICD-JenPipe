# Dockerized Contacts-Manager Application

Dockerized version of the Contacts-Manager application.
Easier. Friendly. Dockerized.

## Prerequisites
- VS Code
- Oracle VM VirtualBox
- Ensure the following ports are available: 8080, 8081, 5012, 5056.
- Vagrant

## Installation

* Navigate to desired empty folder using VS Code.
* Launch new Git Bash terminal.
* Start by cloning the repository:

```bash

git clone https://github.com/lanirelad/Dock04.git .
```
* Once finished, go ahead and launch the VM (That part can take a while):
```bash

vagrant up
```
#### In the sake of validation - you can launch Oracle VM VirtualBox to see the VM starting up.

* Next, connect to your VM:
```bash
vagrant ssh
```
* Apply group changes made by the script:
```bash
sudo newgrp docker
```

* Navigate to the shared folder:
```bash
cd /vagrant
```

* Pull the docker image:
```bash
docker pull lanirelad/contacts-manager:1.4
```
* Run the docker compose YAML
```bash
docker compose up -d
```

* Navigate to the main page in your browser: http://192.168.33.10:5056/viewContacts , and start playing around!

## Reminders
- Within the 'Deleted Contacts' table, the buttons aren't yet implemented.
- To see the MySQL database, visit: http://192.168.33.10:5012 (connection details can be found within the container logs).
- To see the MongoDB database, visit: http://192.168.33.10:8081 (connection details can be found within the container logs).
- If you reach a dead-end, go back to http://192.168.33.10:5056/viewContacts.

