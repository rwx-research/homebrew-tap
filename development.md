# Development

## Updating the version of ABQ

```sh
bin/update-abq-formulae X.X.X
```

This script will:
- Fetch the old tars
- SHA256 them
- Untar them
- Ensure they produce the expected version
- Fetch the new tars
- SHA256 them
- Untar them
- Ensure they produce the expected version
- Replace the old version references with the new version
- Replace the old SHA256 references with the new ones

## Updating the version of Captain

```sh
bin/update-captain-formulae X.X.X
```

This script will:
- Fetch the old binaries
- SHA256 them
- Ensure they produce the expected version
- Fetch the new binaries
- SHA256 them
- Ensure they produce the expected version
- Replace the old version references with the new version
- Replace the old SHA256 references with the new ones
