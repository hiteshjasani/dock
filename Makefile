.PHONY: nim-devel nim-bigbreak

nim:
	docker build -t nim nim-latest

nim-devel:
	docker build -t nim:devel nim-devel

nim-debug:
	docker build -t nim:debug nim-latest-debug

nim-bigbreak:
	docker build -t nim:bigbreak nim-bigbreak

nim-debian:
	docker build -t nim-debian nim-latest-debian

nim-unsquashed:
	docker build -t nim-unsquashed nim-latest-unsquashed

python:
	docker build -t python python-latest

ruby:
	docker build -t ruby ruby-latest

tree:
	docker images -tree

clean:
	docker ps -a -q --filter "status=exited" | xargs docker rm
	docker rmi `docker images -q --filter "dangling=true"`

nuke:
	docker rmi -f `docker images -q --filter "dangling=true"`

