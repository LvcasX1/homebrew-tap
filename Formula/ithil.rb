class Ithil < Formula
  desc "A Terminal User Interface for Telegram"
  homepage "https://github.com/lvcasx1/ithil"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.5.0/ithil-darwin-x86_64.tar.gz"
      sha256 "e68c83fa53ea21626eb67fac1f4d4e0966e032a5c96a6f69b2952e21b6e7d2b8"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.5.0/ithil-darwin-aarch64.tar.gz"
      sha256 "ad69e339a6a7889394e2e82c518db96fe3ba48ddeb23eb646e8043857f7f36fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lvcasx1/ithil/releases/download/v0.5.0/ithil-linux-x86_64.tar.gz"
      sha256 "fed1f6bc3ff8764fe2cc0b1ea02d95396656b75223c8a4acd179493355fcc68a"
    else
      url "https://github.com/lvcasx1/ithil/releases/download/v0.5.0/ithil-linux-aarch64.tar.gz"
      sha256 "78a9205830fced19a904073a4e47210a0edf8dc076007ba6d97c12511d0a2603"
    end
  end

  def install
    bin.install "ithil"
  end

  test do
    assert_match "ithil", shell_output("#{bin}/ithil --version")
  end
end
