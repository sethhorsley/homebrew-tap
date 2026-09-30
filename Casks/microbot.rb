cask "microbot" do
  version "0.1.1"
  sha256 "0704d159d119c2ed7217fa57ce912a8a08a10efb94a68b4053107b7506b646e3"

  url "https://github.com/sethhorsley/homebrew-tap/releases/download/microbot-v#{version}/Microbot_#{version}_aarch64.dmg"
  name "Microbot"
  desc "Menu bar voice recorder with a rolling audio buffer"
  homepage "https://github.com/sethhorsley/homebrew-tap#microbot"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Microbot.app"
end
