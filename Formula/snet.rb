class Snet < Formula
  desc "Secure HTTPS tunnels from localhost to public URLs"
  homepage "https://github.com/sethhorsley/snet-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.1/snet-darwin-arm64.tar.gz"
      sha256 "7af0f88f9bd080435021965adab09d017ce71e662c393b5fdceb19a09937efe8"
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.1/snet-darwin-amd64.tar.gz"
      sha256 "f13137d137488a51bd7bac2c07c554746dddfa5418afd010d4569ff864c860d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.1/snet-linux-arm64.tar.gz"
      sha256 "c2eeadf5488d6d316f2a19c6dff68893637309e2eee98dc9262e8a2906025bfe"
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.1/snet-linux-amd64.tar.gz"
      sha256 "3280fff4ca9fa141a3ac7b601d8defe496267566147b645c797350c38b7d576b"
    end
  end

  def install
    bin.install "snet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snet version")
  end
end
  end

  on_linux do
    if Hardware::CPU.arm?
      url 'https://github.com/sethhorsley/snet-cli/releases/download/v0.1.1/snet-linux-arm64.tar.gz'
      sha256 '13191da4b3d577d132f8b2e21a038826a1f4ef5727a4d144a211d384de2ef3cd'
    else
      url 'https://github.com/sethhorsley/snet-cli/releases/download/v0.1.1/snet-linux-amd64.tar.gz'
      sha256 'bbe4f788a45718bc9f125c10b3fa0d196c24a2cc6a2ffa2eed51399f69c015e4'
    end
  end

  def install
    bin.install 'snet'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snet version")
  end
end
