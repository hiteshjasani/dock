
nim:
	docker build -t nim nim-latest

nim-unsquashed:
	docker build -t nim-unsquashed nim-latest-unsquashed

tree:
	docker images -tree

clean:
	docker ps -a -q --filter "status=exited" | xargs docker rm
	docker rmi `docker images -q --filter "dangling=true"`

nuke:
	docker rmi -f `docker images -q --filter "dangling=true"`

