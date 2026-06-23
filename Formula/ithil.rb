class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.6.0/ithil-darwin-x86_64.tar.gz"
      sha256 "a0b3f26e836776dfd607e6f1647497d3bf5ea9d6658803464586a9dee47cda45"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.6.0/ithil-darwin-aarch64.tar.gz"
      sha256 "b1c9999240d537c9cd6be527fb5d589f437970bdefd991bb99afd7710777f58b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.6.0/ithil-linux-x86_64.tar.gz"
      sha256 "7590aea98b0d0c44142ed78f9b44023e8258c67f997d992b35a33c4742fd5fe0"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.6.0/ithil-linux-aarch64.tar.gz"
      sha256 "715fed4af64682b441faa6f665c2632b61f9ea5f73e8409458174bf1c5aec051"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
