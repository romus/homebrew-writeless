cask "writeless" do
  version "1.0.6"
  sha256 "b6a1cb0570d3f4b338cbf15af094a02d367cac8f7c0662848fbf9a76c389570c"

  url "https://github.com/romus/writeless/releases/download/v#{version}/WriteLess-#{version}.zip"
  name "Write Less"
  desc "Speech-to-text macOS menubar app powered by Whisper"
  homepage "https://github.com/romus/writeless"

  app "Write Less.app"

  zap trash: [
    "~/Library/Application Support/dev.romus.app.writeless",
  ]
end
