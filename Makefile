
nim:
	docker build -t nim nim-latest

nim-debian:
	docker build -t nim-debian nim-latest-debian

nim-unsquashed:
	docker build -t nim-unsquashed nim-latest-unsquashed

python:
	docker build -t python python-latest

tree:
	docker images -tree

clean:
	docker ps -a -q --filter "status=exited" | xargs docker rm
	docker rmi `docker images -q --filter "dangling=true"`

nuke:
	docker rmi -f `docker images -q --filter "dangling=true"`

