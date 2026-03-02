class Snet < Formula
  desc 'Secure tunneling CLI for exposing local services to the internet'
  homepage 'https://github.com/sethhorsley/snet-cli'
  version '0.1.1'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sethhorsley/snet-cli/releases/download/v#{version}/snet-darwin-arm64"
      sha256 '65c148459a139f59263102ad6596a35ae5c717286de48536d4f21af089f29df9'
    else
      url "https://github.com/sethhorsley/snet-cli/releases/download/v#{version}/snet-darwin-amd64"
      sha256 '3f0d0ad74718177248bbc06f0c9c7716dd7ba50caa0949776fe358f0ba3a8477'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sethhorsley/snet-cli/releases/download/v#{version}/snet-linux-amd64"
      sha256 'a6daa5c7926cb3c46664f06a9ffc947b913738b2ff226d153467d13c9c6230c6'
    end
  end

  def install
    binary_name = 'snet'
    on_macos do
      binary_name += if Hardware::CPU.arm?
                       '-darwin-arm64'
                     else
                       '-darwin-amd64'
                     end
    end
    on_linux do
      binary_name += '-linux-amd64'
    end
    bin.install binary_name => 'snet'
  end

  test do
    system "#{bin}/snet", 'version'
  end
end
