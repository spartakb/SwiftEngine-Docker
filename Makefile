default: build

build:
	sudo docker build -t swiftengine/swiftengine:latest .

run:
	docker rm swiftengine
	sudo docker run \
		-it -p 80:8887 \
		-v /Users/administrator/Temp:/var/swiftengine/www/ \
		--name swiftengine \
		swiftengine/swiftengine
	
run-shell:
	sudo docker run \
		-it \
		-p 80:80 \
		swiftengine/swiftengine \
		/bin/bash