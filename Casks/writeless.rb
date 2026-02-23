cask "writeless" do
  version "1.0.1"
  sha256 "e74ffdc88cb6f29907307e8a1765bbf11c3b48995efbe666cd04a024ae43488a"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end