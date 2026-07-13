class Walletkeycheck < Formula
  desc "Validate mnemonics, private keys, WIF, xpub/ypub/zpub, and HD wallet keys"
  homepage "https://github.com/devdasx/wallet-key-validator-kit"
  url "https://github.com/devdasx/wallet-key-validator-kit/releases/download/0.1.0/wallet-key-validator-kit-0.1.0.tgz"
  sha256 "52a7f13eacc5c3a2f3a4332052657bfa7e29d023de75d4a352acb82b0eba6772"
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
