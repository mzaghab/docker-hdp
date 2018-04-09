# docker-hdp
see :   https://github.com/randerzander/docker-hdp
        https://github.com/rmaruthiyodan/docker-hdp-lab

1 - Launch "make build" to build all docker image
2 - Launch "make exec" to launch docker-compose cluster and log into the console
3 - check that cluster is ok for ansible use : ansible -m ping -i ansible/inventories/inventory.hosts all -u