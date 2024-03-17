packages:
    ansible-playbook packages.yaml -i inventory

users:
    ansible-playbook users.yaml -i inventory

hosts:
    ansible-playbook hosts.yaml -i inventory

certificates:
    ansible-playbook certificates.yaml -i inventory

podman: hosts certificates
    ansible-playbook podman.yaml -i inventory

hydra:
    ansible-playbook hydra.yaml -i inventory

all: packages users hosts certificates podman hydra