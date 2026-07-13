class Walletaddrcheck < Formula
  desc "Validate Bitcoin, Ethereum, Solana, Dogecoin, Litecoin, and HD wallet addresses"
  homepage "https://github.com/devdasx/wallet-address-validator-kit"
  url "https://github.com/devdasx/wallet-address-validator-kit/releases/download/0.2.1/wallet-address-validator-kit-0.2.1.tgz"
  sha256 "ce6e06e15e786ca68fcb6aba0f328d9bb790507e5b2a043c17e3ea8cf414cd95"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "pack"
    system "npm", "install", "-g", "--prefix", libexec, Dir["wallet-address-validator-kit-*.tgz"].first
    bin.install_symlink libexec/"bin/walletaddrcheck" => "walletaddrcheck"
  end

  test do
    assert_match "\"valid\":true", shell_output("#{bin}/walletaddrcheck address 1BoatSLRHtKNngkdXEeobR76b53LETtpyT --chain bitcoin")
  end
end
