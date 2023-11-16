# Homebrew Formulas for RWX apps

## abq

Use this tap to install [abq](https://abq.build/).

```bash
brew install rwx-research/tap/abq
```

or

```bash
brew install rwx-research/tap/abq@1
```

to disable major version updates with `brew upgrade`.

## captain

Install the [Captain](https://captain.build) CLI:


```bash
brew install rwx-research/tap/captain
```

or

```bash
brew install rwx-research/tap/captain@1
```

to disable major version updates with `brew upgrade`.

## mint

Install the [Mint](https://www.rwx.com/mint) CLI:


```bash
brew install rwx-research/tap/mint
```

### Updating the version of ABQ

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

### Updating the version of Captain

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

### Updating the version of Mint

```sh
bin/update-mint-formulae X.X.X
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

