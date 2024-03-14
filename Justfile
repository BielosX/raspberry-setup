packages:
    ansible-playbook packages.yaml -i inventory -k 

users:
    ansible-playbook users.yaml -i inventory -k 

podman:
    ansible-playbook podman.yaml -i inventory -k

all: packages users podman