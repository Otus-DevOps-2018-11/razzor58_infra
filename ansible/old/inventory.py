#!/usr/bin/python
import json
import subprocess
import os

ip_attr = 'network_interface.0.access_config.0.assigned_nat_ip'
os.chdir('../terraform/stage/')
# Get terraform state in JSON
output = subprocess.check_output(['terraform', 'state', 'pull'])
tf_state = json.loads(output)

# Find instance IP
for m in tf_state['modules']:
    if len(m['path']) > 1 and m['path'][1] == 'app':
        app_ip = m['resources']['google_compute_instance.app']['primary']['attributes'][ip_attr]
    if len(m['path']) > 1 and m['path'][1] == 'db':
        db_ip = m['resources']['google_compute_instance.db']['primary']['attributes'][ip_attr]

# Return Inventory
result = {
    "app": {
        "children": [],
        "hosts": [
            "appserver"
        ],
        "vars": {
            "ansible_host": app_ip
        }
    },
    "db": {
        "children": [],
        "hosts": [
            "dbserver"
        ],
        "vars": {
            "ansible_host": db_ip
        }
    }
}

print(json.dumps(result))


