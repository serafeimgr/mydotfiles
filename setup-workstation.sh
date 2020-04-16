python -m pip install ansible
ansible-galaxy install geerlingguy.docker gantsign.visual-studio-code geerlingguy.pip gantsign.antigen
ansible-playbook workstation.yml --diff