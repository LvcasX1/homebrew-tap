class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.4/ithil-darwin-x86_64.tar.gz"
      sha256 "0f32213baf2b128fbd8b7abe39ddd40a93e3ffb3dabe5e1498e922d091973fe3"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.4/ithil-darwin-aarch64.tar.gz"
      sha256 "c1235699c59dd0566dc60a57b8d55698f47b6627b95e856af1ef9088df8e3ca8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.4/ithil-linux-x86_64.tar.gz"
      sha256 "aa0168dd431d06c01c8314d4e42f6b3cf7f9bb4298796f94d85ffd33acbd6391"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.2.4/ithil-linux-aarch64.tar.gz"
      sha256 "54a53a4992b432d748a42b21002b56497243f909b958cb4fa93ee51532ff1446"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
