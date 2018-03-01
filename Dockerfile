FROM debian:jessie

RUN apt-get update && \
	apt-get install -y vim rsyslog iptables less && \
	apt-get clean

RUN mkdir ~/.ssh && \
	touch ~/.ssh/authorized_keys

CMD [ "service", "rsyslog", "start" ]
ENTRYPOINT [ "/bin/sh", "-c", "/bin/bash" ]
