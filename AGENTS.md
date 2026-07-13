# Agent instructions

This is a Homebrew tap. Formulae must download from canonical GitHub releases.

Before changing a formula:

```bash
brew audit --new --strict Formula/name.rb
brew install --build-from-source Formula/name.rb
brew test name
```

Keep formula names stable because users install them directly.
