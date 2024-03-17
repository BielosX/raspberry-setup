packages:
    ansible-playbook packages.yaml -i inventory

users:
    ansible-playbook users.yaml -i inventory

certificates:
    ansible-playbook certificates.yaml -i inventory

podman: certificates
    ansible-playbook podman.yaml -i inventory

all: packages users podman certificates