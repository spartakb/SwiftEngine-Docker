FROM ubuntu:16.04
MAINTAINER SwiftEngine Team (team@swiftengine.io)

# Install essentaisl
RUN \
	apt-get update && \
	apt-get install -y --no-install-recommends wget build-essential lsb-core



# Install SwiftEngine Server
RUN \
	mkdir -p /app && \
	cd /app && \
	wget --no-check-certificate "https://github.com/swiftengine/SwiftEngine/archive/0.0.7.tar.gz" && \
	tar xvfz 0.0.7.tar.gz && \
	cd /app/SwiftEngine-0.0.7 && \
	make install-dependencies && \
	make build


EXPOSE 8887

COPY run.sh /app/run.sh
# CMD ["/app/SwiftEngine-0.0.7/run.sh"]
# CMD ["/app/SwiftEngine-0.0.7/.build/debug/SwiftEngineServer"]
CMD ["/app/run.sh"]