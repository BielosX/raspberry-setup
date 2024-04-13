packages:
    ansible-playbook packages.yaml -i inventory

users:
    ansible-playbook users.yaml -i inventory

certificate-authority:
    ansible-playbook certificate_authority.yaml -i inventory

podman: certificate-authority
    ansible-playbook podman.yaml -i inventory

hydra: certificate-authority
    ansible-playbook hydra.yaml -i inventory

journald:
    ansible-playbook journald.yaml -i inventory

kratos: certificate-authority
    ansible-playbook kratos.yaml -i inventory

all: packages users certificate-authority podman hydra kratos journald