cask "writeless" do
  version "1.0.2"
  sha256 "f3da1d9eb9c05b2344504716f3483187bdda43fd641e0ca2f0ff426473b7a732"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end