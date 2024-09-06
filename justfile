server-init-v1 IP HOSTNAME:
    ansible-playbook server-init.yaml -kK -v -i {{ IP }}, --extra-vars "hostname={{ HOSTNAME }}"

server-init-v2 HOSTSFILE:
    ansible-playbook server-init.yaml -kK -v -i {{ HOSTSFILE }}

server-init:
    ansible-playbook server-init.yaml -kK -v

controlplane:
    ansible-playbook controlplane.yaml -v

workers:
    ansible-playbook workers.yaml -v

test:
    ansible-playbook test.yaml -v

ping:
    ansible all -m ping