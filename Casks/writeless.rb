cask "writeless" do
  version "1.0.3"
  sha256 "d3a66062970f9709c5f097b432a6021703f688ff7052bd59402a4066a76c70a3"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end