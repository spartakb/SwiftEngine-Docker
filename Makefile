default: build

build:
	sudo docker build -t swiftengine:latest .

run:
	docker rm swiftengine
	sudo docker run \
		-it -p 80:8887 \
		-v /Users/administrator/Temp:/var/www/html \
		--name swiftengine \
		swiftengine
	
run-shell:
	sudo docker run \
		-it \
		-p 80:80 \
		swiftengine4 \
		/bin/bash