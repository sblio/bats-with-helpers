## Usage

### Standard load commands

```shell
load '/opt/bats-support/load'
load '/opt/bats-assert/load'
load '/opt/bats-file/load'
load '/opt/bats-detik/lib/utils'
load '/opt/bats-detik/lib/detik'
```

### With `bats_load_library`

The Dockerfile has the environment variables `BATS_LIB_PATH` set to `/opt`, enabling use of `bats_load_library`.

```shell
bats_load_library 'bats-support'
bats_load_library 'bats-assert'
bats_load_library 'bats-file'
bats_load_library 'bats-detik/lib/utils'
bats_load_library 'bats-detik/lib/detik'
```

