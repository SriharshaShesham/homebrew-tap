# Homebrew tap for Pixlok

[Pixlok](https://github.com/SriharshaShesham/Pixlok) is a fast, native image viewer for macOS.

## Install

```sh
brew install --cask SriharshaShesham/tap/pixlok
```

Or tap first, then install:

```sh
brew tap SriharshaShesham/tap
brew install --cask pixlok
```

Pixlok is free and not notarized by Apple. The cask removes the macOS quarantine flag after
installing, so the app opens without the "could not verify" prompt.

Pixlok was previously called Picsl. The old `picsl` cask is renamed to `pixlok`, so existing
installs move to Pixlok on the next `brew update` / `brew upgrade`.

## Update

```sh
brew upgrade --cask pixlok
```

## Uninstall

```sh
brew uninstall --cask pixlok
# also remove settings and caches:
brew uninstall --zap --cask pixlok
```

## Requirements

macOS 14 Sonoma or later, on Apple silicon or Intel.
