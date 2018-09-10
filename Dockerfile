FROM ubuntu:16.04
MAINTAINER SwiftEngine Team (team@swiftengine.io)

RUN \
	apt-get update && \
	apt-get install -y --no-install-recommends wget build-essential lsb-core



#install ioncube loader
RUN \
	mkdir -p /app && \
	cd /app && \
	wget --no-check-certificate "https://github.com/swiftengine/SwiftEngine/archive/0.0.7.tar.gz" && \
	tar xvfz 0.0.7.tar.gz && \
	cd /app/SwiftEngine-0.0.7 && \
	make install-dependencies


EXPOSE 80

# CMD ["/app/SwiftEngine-0.0.7/run.sh"]
CMD ["make", "-C", "/app/SwiftEngine-0.0.7", "run"]