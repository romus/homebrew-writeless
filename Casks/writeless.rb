cask "writeless" do
  version "1.0.8"
  sha256 "cce3cc2a8cbe897b6b23bd218c178c7cdac99c0df80de51c50bad32d535caa65"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end
