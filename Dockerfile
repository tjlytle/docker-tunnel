FROM alpine
LABEL maintainer="tim@timlytle.net"

RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

CMD ssh \
-vv \
-o StrictHostKeyChecking=no \
-Nn $TUNNEL \
-L $LOCAL:$REMOTE 
