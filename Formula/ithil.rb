class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.3/ithil-darwin-x86_64.tar.gz"
      sha256 "7e3fac9d7c24a70aa39f9980ea219efaad2f070a53bf4f03793a0876932c9e11"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.3/ithil-darwin-aarch64.tar.gz"
      sha256 "653a17f0d1f39632f7b2d20fa3831e22d61b6c1231bfed6129fc5ce61c092ccf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.3/ithil-linux-x86_64.tar.gz"
      sha256 "ef494be32895e5b2d957366b2a8e091fe95c1f64465895dbd502bf3f00b781fd"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.3/ithil-linux-aarch64.tar.gz"
      sha256 "1dcc9cbe6c1e38a3f7c0a1bf1d8b402f567850984dbb92c2f6380ee04749e3f7"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
