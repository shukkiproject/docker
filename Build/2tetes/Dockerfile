FROM alpine:3.9

RUN set -eux \
	&& apk add --no-cache bash \
					supervisor \
					openssh-server openssh-keygen

RUN set -eux \
	&& apk add --no-cache apache2

# ; true


ENTRYPOINT ["/usr/local/bin/ep.sh"]
# CMD ["bash"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

COPY ep.sh /usr/local/bin/ep.sh
COPY ep.d /ep.d