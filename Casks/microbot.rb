cask "microbot" do
  version "0.1.0"
  sha256 "480c2085b4a425d93d0b60100d0cbbde0191ad3ad425f2baf3de44152d083c35"

  url "https://github.com/sethhorsley/homebrew-tap/releases/download/microbot-v#{version}/Microbot_#{version}_aarch64.dmg"
  name "Microbot"
  desc "Menu bar voice recorder with a rolling audio buffer"
  homepage "https://github.com/sethhorsley/homebrew-tap#microbot"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Microbot.app"
end
