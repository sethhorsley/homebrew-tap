class Snet < Formula
  desc "Secure HTTPS tunnels from localhost to public URLs"
  homepage "https://github.com/sethhorsley/snet-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.3/snet-darwin-arm64.tar.gz"
      sha256 "2d5050c41e41967fabe61f8ad6f62f4e54b0bb821391e3752229dc87e7417777"
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.3/snet-darwin-amd64.tar.gz"
      sha256 "12ff46ecbefd069e3dccd58942ac29e7d8c4cec7b7dd4156c05ed53775a4795f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.3/snet-linux-arm64.tar.gz"
      sha256 "32ed1c41a92946daa3b0f9acc73767a1be51c748da10b26c35c18d002fb9be22"
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download/v0.1.3/snet-linux-amd64.tar.gz"
      sha256 "7aa073f74903f9094d55c4911626873674de5cf158d9a3d9d35b82c525999248"
    end
  end

  def install
    bin.install "snet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snet version")
  end
end
