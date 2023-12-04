
# clair-helm

[![MIT Licensed](https://img.shields.io/github/license/guerzon/clair-helm)](https://github.com/guerzon/clair-helm/blob/main/LICENSE)
[![Helm Release](https://img.shields.io/github/v/release/guerzon/clair-helm)](https://github.com/guerzon/clair-helm/releases)

Helm chart for [Clair](https://github.com/quay/clair).

## Warning

If you happen to stumble upon this repo, please be aware that this is a work in progress. Therefore, please assume version < 1.0.0 to be unstable. Or as long as you see this warning message.

Also, it's a passion project, so please bear with me.

## Features

The chart supports [distributed deployment](https://quay.github.io/clair/howto/deployment.html#distributed-deployment):

![Distributed deployment](https://quay.github.io/clair/howto/clairv4_distributed_multi_db.png)

## Usage

Add the repository:

```bash
helm repo add clair https://guerzon.github.io/clair-helm
```

Verify:

```bash
helm search repo clair
```

Please refer to the [detailed documentation](./charts/clair/README.md) to get started.

## Testing

If not using an ingresss:

```bash
kubectl -n clair port-forward service/clair 6060:6060
```

Test the vaultwarden/server image:

```bash
clairctl report ubuntu:focal
```

## References

- <https://github.com/quay/clair/tree/main/local-dev>
- <https://quay.github.io/clair/howto/deployment.html>
- <https://quay.github.io/clair/reference/config.html>
- <https://quay.io/repository/projectquay/clair?tab=info>
- <https://github.com/quay/clair/issues/1152>

## License

See [LICENSE](./LICENSE).
