cask "writeless" do
  version "1.0.5"
  sha256 "8b5001f9b4c9c94c63740cf71c5d6854c8c631b4d777ab6e8517343548a5d6c5"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end
