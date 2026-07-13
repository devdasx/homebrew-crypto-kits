# homebrew-crypto-kits

Homebrew tap for devdasx crypto wallet CLI packages.

GitHub release tags are the source of truth for formula downloads.

## Install

```bash
brew tap devdasx/crypto-kits
brew install bip39kit
brew install walletkeycheck
brew install walletaddrcheck
```

Or install directly:

```bash
brew install devdasx/crypto-kits/bip39kit
brew install devdasx/crypto-kits/walletkeycheck
brew install devdasx/crypto-kits/walletaddrcheck
```

## Commands

```bash
bip39kit --help
walletkeycheck list-chains --pretty
walletaddrcheck address 1BoatSLRHtKNngkdXEeobR76b53LETtpyT --chain bitcoin --pretty
```

## Packages

- `bip39kit`: from <https://github.com/devdasx/bip39-mnemonic-kit>
- `walletkeycheck`: from <https://github.com/devdasx/wallet-key-validator-kit>
- `walletaddrcheck`: from <https://github.com/devdasx/wallet-address-validator-kit>
