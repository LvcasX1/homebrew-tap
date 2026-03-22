class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-darwin-x86_64.tar.gz"
      sha256 "6847c61805b2e0539ce23922bc4355d2709ea132b9636d2bd7afb605db375200"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-darwin-aarch64.tar.gz"
      sha256 "2410fb057ccaf62be705323c18e8a2c143d26759bb573b1985c0cadd40e9cb96"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-linux-x86_64.tar.gz"
      sha256 "eb8ca0b0e9b930186e92e3ea901d81d9bc2c3ab279cc6340f71f2c0fe439d6ef"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.0/ithil-linux-aarch64.tar.gz"
      sha256 "cce349e07bf76c36d84a412d6598abd505c551266e11b21a8b63bb4b91994553"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
