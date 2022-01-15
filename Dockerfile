FROM alpine:3

RUN apk --no-cache add transmission-daemon \
    && mkdir -p /transmission/config \
    && chmod -R 1777 /transmission \
    && rm -rf /tmp/*
RUN apk --no-cache add curl
RUN apk --no-cache add wireguard-tools
ADD wireguard/wg0sample.conf /etc/wireguard/
ADD startup.sh /
RUN chmod -R 1777 /startup.sh \
    && chmod -R 1777 /etc/wireguard/*
WORKDIR /


STOPSIGNAL SIGTERM
ENTRYPOINT [ "/startup.sh" ]
#ENTRYPOINT ["/usr/bin/transmission-daemon", "--foreground", "--config-dir", "/transmission/config"]