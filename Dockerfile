FROM bats/bats

RUN apk add --no-cache git \
 && git clone https://github.com/bats-core/bats-support.git /opt/bats-support \
 && git clone https://github.com/bats-core/bats-assert.git /opt/bats-assert \
 && git clone https://github.com/bats-core/bats-file.git /opt/bats-file

# TODO: decide if detik is useful (needs more dependencies - kubectl)
# && git clone https://github.com/bats-core/bats-detik.git /opt/bats-detik

FROM bats/bats
COPY --from=0 /opt/bats-support /opt/bats-support
COPY --from=0 /opt/bats-assert /opt/bats-assert
COPY --from=0 /opt/bats-file /opt/bats-file
