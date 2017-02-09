vagrant up --no-provision

vagrant provision

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tasks/main.yml
