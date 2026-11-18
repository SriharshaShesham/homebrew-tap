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

Pixlok was previously called Picsl. If you have `picsl` installed, switch over once with:

```sh
brew update
brew upgrade --cask SriharshaShesham/tap/pixlok
```

Homebrew only loads apps from third-party taps that you have named in full, so the plain
`brew upgrade` can't do this step on its own. After the switch, it works as usual.

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
