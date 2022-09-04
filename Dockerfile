FROM bats/bats

RUN apk add --no-cache git \
 && git clone --depth=1 https://github.com/bats-core/bats-support.git /opt/bats-support \
 && git clone --depth=1 https://github.com/bats-core/bats-assert.git /opt/bats-assert \
 && git clone --depth=1 https://github.com/bats-core/bats-file.git /opt/bats-file \
 && rm -rf /opt/bats-*/.git

# TODO: decide if detik is useful (needs more dependencies)
# && git clone https://github.com/bats-core/bats-detik.git /opt/bats-detik \
# && apk add --no-cache kubectl

# TODO: consider third party bats helpers

FROM bats/bats
ENV BATS_LIB_PATH=/opt
COPY --from=0 /opt/bats-support /opt/bats-support
COPY --from=0 /opt/bats-assert /opt/bats-assert
COPY --from=0 /opt/bats-file /opt/bats-file
