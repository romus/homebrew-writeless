cask "writeless" do
  version "1.0.4"
  sha256 "23caf1b0aec84b2b488f5aa8a2a693cc4fb7833c1eadcf92982e6e5d998f2376"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end