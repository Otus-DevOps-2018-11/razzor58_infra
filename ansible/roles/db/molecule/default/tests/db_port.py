import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


# check if MongoDB port is listening
def test_mongo_port_is_listening(host):
    assert host.socket("tcp://:::27017").is_listening
