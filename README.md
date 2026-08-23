# Homebrew Cask Tap

This repository is a Homebrew Cask tap for archived softwares. Casks live in [`Casks/`](Casks).

```sh
brew tap baobao1270/cask
brew install --cask baobao1270/cask/<cask>
```

Validate changes before committing:

```sh
brew audit --cask --strict Casks/<cask>.rb
brew style --cask Casks/<cask>.rb
```

## Release Naming

- Git tags use `YYYY.MM.DD.SEQ`, where `SEQ` starts at `1` and increments for
  each additional release on the same day.
- Release titles use `<software full name> <version>`.
- Release bodies are empty.
- Release assets use
  `<cask-ruby-file-name>_<actual-version>-<arch>.<ext>`, where `<arch>` is
  `arm` or `intel`.
- Include `<actual-version>` whenever a cask supports multiple versions.
