# Seth Horsley's Homebrew tap

## Microbot

A menu bar voice recorder with a rolling audio buffer. Requires Apple Silicon
and macOS Monterey (12) or later.

```sh
brew install --cask sethhorsley/tap/microbot
```

This initial release is ad-hoc signed, not Apple-notarized. After attempting
to open Microbot, allow it in System Settings → Privacy & Security → Open Anyway
if macOS blocks it. Allow microphone access when prompted.

Update with `brew update && brew upgrade --cask microbot`.
Recordings are stored in `~/Documents/Microbot/recordings` and are retained
when the app is uninstalled.
