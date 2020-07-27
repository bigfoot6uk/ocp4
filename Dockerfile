FROM busybox:latest

MAINTAINER Brent Salisbury <brent.salisbury@gmail.com>

# build initial cache | install binary | remove cache
RUN apk update && apk add \
	nmap \
	&& rm -rf /var/cache/apk/*

CMD ping 127.0.0.1