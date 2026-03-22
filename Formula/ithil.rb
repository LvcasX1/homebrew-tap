class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-darwin-x86_64.tar.gz"
      sha256 "b02cd94ec1b4891f93e63d4367128b138a0d2faa6e85cad950c7a0ba0799bc6f"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-darwin-aarch64.tar.gz"
      sha256 "3b9d9655ec7929207ad68ecf6f9848950994c7e22748ca21619bd3cbaf161e43"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-linux-x86_64.tar.gz"
      sha256 "f03c5243c2421bddbdab094380817ba1540f34ea011bb25c3016811da8a37a0f"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.2/ithil-linux-aarch64.tar.gz"
      sha256 "d0a982e41427ac8c772fe7ff8388e512b6c70204f66010caedc4cbb5f43768e7"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
