class Wallethd < Formula
  desc "Offline multi-chain HD wallet derivation CLI"
  homepage "https://devdasx.github.io/wallet-hd-derivation-kit/cli/"
  url "https://github.com/devdasx/wallet-hd-derivation-kit/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "9c3c6ad5f178b8e61b0c73ed56e00c09e67ec7fb3a8941fd82f86c76ab86c488"
  license "MIT"
  head "https://github.com/devdasx/wallet-hd-derivation-kit.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".", bin: "wallethd", locked: true)
    generate_completions_from_executable(bin/"wallethd", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wallethd version")
    assert_match "bitcoin", shell_output("#{bin}/wallethd list-chains")
    assert_match "verified", shell_output("#{bin}/wallethd vectors verify")
  end
end
