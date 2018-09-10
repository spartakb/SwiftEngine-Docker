default: build

build:
	sudo docker build -t swiftengine:latest .

run:
	sudo docker run \ 
		-it -p 80:80 \
		-v /Users/administrator/Temp:/var/www/html \
		--name swiftengine \
		swiftengine 
	
run-shell:
	sudo docker run \
		-it \
		-p 80:80 \
		spoto-whmcs \
		/bin/bash