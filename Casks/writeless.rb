cask "writeless" do
  version "1.0.7"
  sha256 "949120c8169b59013102c587e7e33500aeef9357d2220e6bcea27242f69a74c6"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end
