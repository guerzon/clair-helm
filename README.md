
# clair-helm

[![MIT Licensed](https://img.shields.io/github/license/guerzon/clair-helm)](https://github.com/guerzon/clair-helm/blob/main/LICENSE)
[![Helm Release](https://img.shields.io/github/v/release/guerzon/clair-helm)](https://github.com/guerzon/clair-helm/releases)

Helm chart for [Clair](https://github.com/quay/clair).

## Warning

If you happen to stumble upon this repo, please be aware that this is a work in progress. Therefore, please assume version < 1.0.0 to be unstable. Or as long as you see this warning message.

Also, it's a passion project, so please bear with me.

## Features / TODO

1. Supports running in `combo` mode (default).
2. Supports running on a single instance with the DB split per mode.
3. Supports running multiple instances.

## Usage

Add the repository:

```bash
helm repo add clair https://guerzon.github.io/clair
```

List the chart:

```bash
helm search repo clair
```

Please refer to the [detailed documentation](./charts/clair/README.md) to get started.

## Testing

If not using an ingresss:

```bash
kubectl -n clair port-forward service/clair 6060:6060

## Test the vaultwarden/server image:
clairctl report --host http://localhost:6060 vaultwarden/server
```

## References

- <https://github.com/quay/clair/tree/main/local-dev>
- <https://quay.github.io/clair/howto/deployment.html>
- <https://quay.github.io/clair/reference/config.html>
- <https://quay.io/repository/projectquay/clair?tab=info>
- <https://github.com/quay/clair/issues/1152>

## License

See [LICENSE](./LICENSE).
