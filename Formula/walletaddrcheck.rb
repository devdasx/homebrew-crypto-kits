class Walletaddrcheck < Formula
  desc "Validate Bitcoin, Ethereum, Solana, Dogecoin, Litecoin, and HD wallet addresses"
  homepage "https://github.com/devdasx/wallet-address-validator-kit"
  url "https://github.com/devdasx/wallet-address-validator-kit/releases/download/0.1.0/wallet-address-validator-kit-0.1.0.tgz"
  sha256 "09b23232c82163eb1ef4c84ed9d2fb248d3d5212dc86685efd1f8468fb47d1f5"
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
