class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.1/ithil-darwin-x86_64.tar.gz"
      sha256 "af027b3070c51df053564e7d322528c6a31c1e6efeaec5b052fea3b57e34ee03"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.1/ithil-darwin-aarch64.tar.gz"
      sha256 "ccf3da54843fec92286423564396280ff3bddb1775e30172a02add4a3c44ac51"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.1/ithil-linux-x86_64.tar.gz"
      sha256 "1bd747cd2419ec538e5d27fb408c53ba6519f1dd92645484f89fcfcfa5746ecb"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.1/ithil-linux-aarch64.tar.gz"
      sha256 "5a8494217edfc44c4ddf7b26cb56231c87a89cfcb596060e403a92a06cf3ab02"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
