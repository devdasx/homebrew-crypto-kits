class Walletkeycheck < Formula
  desc "Validate mnemonics, private keys, WIF, xpub/ypub/zpub, and HD wallet keys"
  homepage "https://github.com/devdasx/wallet-key-validator-kit"
  url "https://github.com/devdasx/wallet-key-validator-kit/releases/download/0.2.0/wallet-key-validator-kit-0.2.0.tgz"
  sha256 "8d229b89800db9744e2f62166d32148c304aef343dca3e3cd64fed7ecb8a08fa"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "pack"
    system "npm", "install", "-g", "--prefix", libexec, Dir["wallet-key-validator-kit-*.tgz"].first
    bin.install_symlink libexec/"bin/walletkeycheck" => "walletkeycheck"
  end

  test do
    assert_match "bitcoin", shell_output("#{bin}/walletkeycheck list-chains")
  end
end
