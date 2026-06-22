class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.4.0/ithil-darwin-x86_64.tar.gz"
      sha256 "05b2b975838fb5279829d972528d46d8a34e88a59a9c13ad2a6612a0aa54c231"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.4.0/ithil-darwin-aarch64.tar.gz"
      sha256 "41d9af790f3e6642e99d9811baa748f1c048b1faa4702cef1486688e44d26261"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.4.0/ithil-linux-x86_64.tar.gz"
      sha256 "263da95cadb46fe24a176b2e9c7bfb87eaa97468d1d67e94e0043f5a6a0b1e09"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.4.0/ithil-linux-aarch64.tar.gz"
      sha256 "b6d356a6474b7a6bc562a719b154ffc96e8aa0d1393717e929d2f69a3c4e1010"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
