cask "microbot" do
  version "0.1.2"
  sha256 "ffa1b1ab4910c84dd6314db67779ded3e87f62439a5aab0f59d3abc782c9e0cd"

  url "https://github.com/sethhorsley/homebrew-tap/releases/download/microbot-v#{version}/Microbot_#{version}_aarch64.dmg"
  name "Microbot"
  desc "Menu bar voice recorder with a rolling audio buffer"
  homepage "https://github.com/sethhorsley/homebrew-tap#microbot"

  depends_on arch: :arm64
  depends_on macos: :monterey

  auto_updates true

  app "Microbot.app"
end
