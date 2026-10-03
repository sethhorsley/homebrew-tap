cask "microbot" do
  version "0.1.3"
  sha256 "74477f248639363b30cdaa3d31e26a48bd87005b3bbbf04c618b73c094a2e347"

  url "https://github.com/sethhorsley/homebrew-tap/releases/download/microbot-v#{version}/Microbot_#{version}_aarch64.dmg"
  name "Microbot"
  desc "Menu bar voice recorder with a rolling audio buffer"
  homepage "https://github.com/sethhorsley/homebrew-tap#microbot"

  depends_on arch: :arm64
  depends_on macos: :monterey

  auto_updates true

  app "Microbot.app"
end
