# install-nats-io-server-ubuntu

Github action to install the NATS.io server from the head default branch

## Notes

* Works for `runs-on: ubuntu-*`
* Requires GO already setup. See example
* Makes `nats-server` available in the path

## Example

```
jobs:
  install-nats-io-server:
    runs-on: ubuntu-latest
    steps:
      - name: Setup GO
        uses: actions/setup-go@v2
        with:
          go-version: 1.16.3
      - name: Install Nats Server
        uses: scottf/install-nats-io-server-default-branch@v1
      - name: Run the server
        run: nats-server
```
