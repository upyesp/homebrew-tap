# upyesp homebrew tap

Homebrew channel for [epher](https://epher.org/), the macOS side of
ADR-0072 ("macOS installs come from Homebrew") in the
[epher monorepo](https://github.com/upyesp/epher).

## Install

    brew install --cask upyesp/tap/epher

One app (Apple Silicon): `epher.app` lands in Applications and the
`epher` terminal command is linked onto your PATH. First launch:
right-click the app and choose Open (the app is ad-hoc signed, and
Homebrew quarantines downloads like a browser does; add
`--no-quarantine` if you prefer to skip that).

## Updates

    brew upgrade

The `self-update` workflow checks epher's latest release hourly and
bumps the cask (version + sha256) by itself; the cask is never
hand-edited. Intel macs are not built, by decision of ADR-0025, and
the cask's arch guard says so before an install can go wrong.
