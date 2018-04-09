#buildArgs
registry=mzaghab
current_dir = $(shell pwd)
imageName=$(registry)/$(littleName)
taggedImageName=$(imageName):$(version)

dockerfile=Dockerfile

command=

build:
	docker build $(buildArgs) --no-cache -t $(taggedImageName) .

rmi:
	docker rmi -f $(taggedImageName)

logs:
	docker logs $(littleName)

exec:
	docker exec -ti $(littleName) /bin/bash

run:
	docker run -d --name $(littleName) $(environnement) $(publish) $(taggedImageName) $(command)

run-ti:
	docker run --rm -ti --name $(littleName) $(environnement) $(publish) $(taggedImageName) $(command)

rm:
	docker rm -f $(littleName) | true

stop:
	docker stop $(littleName)
