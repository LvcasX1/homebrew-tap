class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-darwin-x86_64.tar.gz"
      sha256 "21d506830309734ff0e9d350a29bb8bed1ca9a840be603f47b49160bc95af86e"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-darwin-aarch64.tar.gz"
      sha256 "3ae6f186e26df56d95af04597993cebda1adf03c787f4a77f534f4b53000c59b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-linux-x86_64.tar.gz"
      sha256 "a0487d850e40474b12cdece24de1efa5ac7df5c836a667c4b42ca5b9013c22a6"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-linux-aarch64.tar.gz"
      sha256 "35f0a781fe8c7f51ce4d68f28a2580ae0fb6d652e7c94f04fef2a3c2bff36c5a"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
