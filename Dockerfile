FROM golang:1.23.1-alpine
RUN apk add make
WORKDIR /src
COPY src /src
RUN make

FROM alpine:3.20.3
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main openssh
COPY --from=0 /src/pdc-agent /usr/bin/pdc
RUN addgroup pdc && adduser -G pdc pdc -D
RUN chown -R pdc:pdc /usr/bin/pdc
USER pdc:pdc
ENTRYPOINT ["/usr/bin/pdc"]
