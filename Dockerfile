FROM alpine:latest

MAINTAINER Brent Salisbury <brent.salisbury@gmail.com>

# build initial cache | install binary | remove cache
RUN apk update && apk add \
	nmap \
	&& rm -rf /var/cache/apk/*
	
RUN chmod u+s /bin/ping
CMD ping 127.0.0.1

CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
