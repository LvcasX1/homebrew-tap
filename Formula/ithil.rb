class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-darwin-x86_64.tar.gz"
      sha256 "aca854e9c02a218182e308770a17e3d5d9f24d138b47722e85fd1ec702c94568"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-darwin-aarch64.tar.gz"
      sha256 "789cb55d66eddd2279274bcdb25eccd093f287476688c7116d5d0cbd31ce9e5e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-linux-x86_64.tar.gz"
      sha256 "0c83d78edf66de9338c26d192512500ed1b6788954d2d466188784a5c9964f22"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-linux-aarch64.tar.gz"
      sha256 "4c078762b80634f7f3227a92153d4a19f92cc57f777802df1a29b2953cce2e66"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
