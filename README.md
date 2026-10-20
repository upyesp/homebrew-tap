# upyesp homebrew tap

Homebrew channel for [epher](https://epher.org/), the macOS side of
ADR-0072 ("macOS installs come from Homebrew") in the
[epher monorepo](https://github.com/upyesp/epher).

## Install

The desktop app (Apple Silicon), into Applications with the `epher`
terminal command linked onto your PATH:

    brew install --cask upyesp/tap/epher

Just the terminal command (CLI, REPL, TUI), without the app (ADR-0076
in the monorepo):

    brew install upyesp/tap/epher

First launch of the app: right-click it and choose Open, or allow it
in System Settings → Privacy & Security — Homebrew quarantines cask
downloads like a browser does, and epher ships ad-hoc signed
(ADR-0058 in the monorepo). No Homebrew? The website's one-line
installer (install.sh, ADR-0076) installs the app and the command
with no approval step at all.

## Updates

    brew upgrade

The `self-update` workflow checks epher's latest release hourly and
bumps the cask and the formula (version + sha256 each) by itself;
neither file is hand-edited. Intel macs are not built, by decision of
ADR-0025, and both recipes' arch guards say so before an install can
go wrong.
