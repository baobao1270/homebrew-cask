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
