FROM alpine

ARG AVAHI_VERSION=0.6.32
ARG AVAHI_RELEASE=r4

RUN env && apk add --no-cache \
    avahi=$AVAHI_VERSION-$AVAHI_RELEASE \
    avahi-tools=$AVAHI_VERSION-$AVAHI_RELEASE 

ENTRYPOINT ["avahi-daemon"]
