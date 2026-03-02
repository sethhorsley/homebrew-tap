class Snet < Formula
  desc "Secure HTTPS tunnels from localhost to public URLs"
  homepage "https://github.com/sethhorsley/snet-cli"
  version ""
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download//snet-darwin-arm64.tar.gz"
      sha256 "e2ec7215d5b8786aa044f8b449560de6cc0e11403b6f6625064c24d4b7d36c94"
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download//snet-darwin-amd64.tar.gz"
      sha256 "8967967b1506ad38eb4dd2a003d96e3d35975422ce82c55a56ffdddc98058f20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download//snet-linux-arm64.tar.gz"
      sha256 "13191da4b3d577d132f8b2e21a038826a1f4ef5727a4d144a211d384de2ef3cd"
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download//snet-linux-amd64.tar.gz"
      sha256 "bbe4f788a45718bc9f125c10b3fa0d196c24a2cc6a2ffa2eed51399f69c015e4"
    end
  end

  def install
    bin.install "snet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snet version")
  end
end
