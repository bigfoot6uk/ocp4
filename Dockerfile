FROM alpine:latest

MAINTAINER Simon Pole

RUN apk update && apk add \
	nmap nmap-scripts curl tcpdump bind-tools libcap openssh iperf3 iputils \
	&& rm -rf /var/cache/apk/*
	
RUN chmod u+s /bin/ping


CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
