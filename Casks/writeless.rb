cask "writeless" do
  version "1.0.0"
  sha256 "894365f8f595cadfe26f0206dd9f2da970ccdf2897691a0c7a89a3d077e4987b"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end