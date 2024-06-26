packages:
    ansible-playbook packages.yaml -i inventory

users:
    ansible-playbook users.yaml -i inventory

certificate-authority:
    ansible-playbook certificate_authority.yaml -i inventory

podman: certificate-authority
    ansible-playbook podman.yaml -i inventory

journald:
    ansible-playbook journald.yaml -i inventory

java:
    ansible-playbook java.yaml -i inventory

keycloak:
    ansible-playbook keycloak.yaml -i inventory

postgresql:
    ansible-playbook postgresql.yaml -i inventory

all: packages users certificate-authority podman journald java keycloak postgresql
