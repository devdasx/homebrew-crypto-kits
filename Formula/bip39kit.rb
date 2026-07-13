class Bip39kit < Formula
  desc "Generate and validate BIP-39 mnemonic phrases from the terminal"
  homepage "https://github.com/devdasx/bip39-mnemonic-kit"
  url "https://github.com/devdasx/bip39-mnemonic-kit/archive/refs/tags/2.0.1.tar.gz"
  sha256 "b816ef5abf0e8583f7867066727279b211e75daf40bd655790b5a471c3b13f8d"
  license "MIT"

  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/bip39kit"
  end

  test do
    assert_match "mnemonic", shell_output("#{bin}/bip39kit --help")
  end
end
