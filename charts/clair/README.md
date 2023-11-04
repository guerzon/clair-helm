
# clair

Vulnerability Static Analysis for Containers

## TL;DR

```bash
# install:
helm install clair clair/clair \
  --create-namespace \
  --namespace clair \
  --set "database.host=prod.contoso.org" \
  --set "database.dbName=clairdb" \
  --set "database.user=app" \
  --set "database.user=Supers3cret"
```

Using a custom values in the file `demo.yaml`:

```bash
helm upgrade -i clair clair/clair \
  --create-namespace \
  --namespace clair \
  -f demo.yaml
```

## Detailed guide

### General configuration

This chart deploys `clair` from pre-built images on [quay.io](https://quay.io/repository/projectquay/clair). The image can be defined by specifying the tag with `image.tag`.

Here is an example that uses the nightly image build `nightly` and an existing secret that contains registry credentials:

```yaml
image:
  tag: "nightly"
  pullSecrets:
    - myRegKey
```

### Database options

Clair requires PostgreSQL for its data persistence. By default, it does migrations, so all you need is to point it to a database.

To configure, set `database.type` to either `mysql` or `postgresql` and specify the datase connection information.

Example for using an external MySQL database:

```yaml
database:
  host: database.contoso.eu
  username: appuser
  password: apppassword
  dbName: prodapp
  sslMode: disable
```

## Parameters
