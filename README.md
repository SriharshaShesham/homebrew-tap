# Homebrew tap for Picsl

[Picsl](https://github.com/SriharshaShesham/Picsl) is a fast, native image viewer for macOS.

## Install

```sh
brew install --cask SriharshaShesham/tap/picsl
```

Or tap first, then install:

```sh
brew tap SriharshaShesham/tap
brew install --cask picsl
```

Picsl is free and not notarized by Apple. The cask removes the macOS quarantine flag after
installing, so the app opens without the "could not verify" prompt.

## Update

```sh
brew upgrade --cask picsl
```

## Uninstall

```sh
brew uninstall --cask picsl
# also remove settings and caches:
brew uninstall --zap --cask picsl
```

## Requirements

macOS 14 Sonoma or later, on Apple silicon or Intel.
