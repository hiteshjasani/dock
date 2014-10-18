dock
====

## Usage

<pre>
+- dock/ +- docker-nim-dev/
|        +- .../
|
+- project1/ +- Makefile
|            +- foo.nim
|
+- project2/ +- Makefile
             +- bar.nim

</pre>

Contents of a Makefile should include instructions for building an image
and running the container.

For example

```Makefile

build:
	docker build -t "nim:dev" ../dock/docker-nim-dev

run-it:
	docker run -it -v `pwd`:/usr/local/src/code nim:dev /bin/bash

version:
	docker run -v `pwd`:/usr/local/src/code nim:dev make v

v:
	nimrod -v
```

