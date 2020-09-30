FROM alpine:latest
LABEL maintainer="tw@travis.wang"

RUN apk add --no-cache zerotier-one

ADD ./entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]
CMD tail -f /dev/null
