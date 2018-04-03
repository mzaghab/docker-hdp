#current_dir = $(shell pwd)
dockerRepo=mzaghab
imageName=base-node
version=1
taggedImageName=$(dockerRepo)/$(imageName):$(version)
#latestImageName=$(imageName):latest
consoleImage=console.dev
dockerfile=images/base-node/
#host = $(shell if [ -n "$(shell which boot2docker)" ]; then boot2docker ip; else echo 127.0.0.1; fi)

#MAC boot2docker , linux => ifconfig...
#docker_host = $(shell if [ -n "$(shell which boot2docker)" ]; then boot2docker ip; else ifconfig docker0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'; fi)

#command=

build:
	echo "Building image $(taggedImageName) from folder $(dockerfile)"
	docker build -t $(taggedImageName) $(dockerfile)

exec:
	docker-compose  up -d;docker-compose exec --privileged $(consoleImage) /bin/bash

down:
	docker-compose down

#rm:
#	docker rm -f $(littleName) | true

#stop:
#	docker stop $(littleName)

#rmi:
#	docker rmi -f $(taggedImageName) && docker rmi -f $(latestImageName) | true

#logs:
#	docker logs $(littleName)

#exec:
#	docker exec  -e http_proxy -e https_proxy -e no_proxy -e HTTP_PROXY -e HTTPS_PROXY  -e NO_PROXY  -ti $(littleName) /bin/bash

#run:
#	docker run  -e http_proxy -e https_proxy -e no_proxy -e HTTP_PROXY -e HTTPS_PROXY  -e NO_PROXY -d --name $(littleName) $(environnement) $(publish) $(taggedImageName) $(command)

#run-ti:
#	docker run -e http_proxy -e https_proxy -e no_proxy -e HTTP_PROXY -e HTTPS_PROXY  -e NO_PROXY --rm -ti --name $(littleName) $(environnement) $(publish) $(taggedImageName) $(command)


#push-tagged:
#	docker push $(taggedImageName)

#push-latest:
#	docker push $(latestImageName)
