# Homebrew Cask Tap

This repository is a personal Homebrew Cask tap. Casks live in [`Casks/`](Casks).

```sh
brew tap <owner>/cask
brew install --cask <owner>/cask/<cask>
```

Validate changes before committing:

```sh
brew audit --cask --strict Casks/<cask>.rb
brew style --cask Casks/<cask>.rb
```

## Releases

Git tags use `YYYY.MM.DD.SEQ`, where `SEQ` starts at `1` and increments for
each additional release on the same day. Release assets use
`<cask-ruby-file-name>_<actual-version>-<arch>.<ext>`, where `<arch>` is
`arm` or `intel`. Include `<actual-version>` whenever a cask supports multiple
versions.
