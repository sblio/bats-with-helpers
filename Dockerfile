FROM bats/bats

COPY ./bats-core/bats-assert /opt/bats-assert
COPY ./bats-core/bats-detik /opt/bats-detik
COPY ./bats-core/bats-file /opt/bats-file
COPY ./bats-core/bats-support /opt/bats-support

