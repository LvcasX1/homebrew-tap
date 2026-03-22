class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.1/ithil-darwin-x86_64.tar.gz"
      sha256 "04c57cb0382ff1519ec18a840b1c2098b5ca98b52c0290a1299d2aa355d29bfa"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.1/ithil-darwin-aarch64.tar.gz"
      sha256 "a6105408eda961d3d69b551bb92ec152dc0e5ada4b5cb08ab68ce816eb04b0f9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.1/ithil-linux-x86_64.tar.gz"
      sha256 "710bddfdb1c27817767da35ebe08b46f129483ce325ec956a80dc8c978ccbc30"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.3.1/ithil-linux-aarch64.tar.gz"
      sha256 "a05681e705408e035bbbc6227f158e9be1f4694d57a1a28d0a413e4d42bfd512"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
