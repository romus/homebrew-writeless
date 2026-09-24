cask "writeless" do
  version "2.0.1"
  sha256 "4ba1a2fa91b7c294cf61715fa1723ff7f99d946ae900d2ad1f0311ba6f835564"

  url "https://github.com/romus/writeless-macos/releases/download/v#{version}/Writeless-#{version}.zip"
  name "Write Less"
  desc "On-device speech-to-text from the menu bar"
  homepage "https://github.com/romus/writeless-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Write Less.app"

  # Releases are ad-hoc signed, so their code signature changes with every
  # build and Homebrew cannot carry the Gatekeeper approval across upgrades.
  # Without this, every update means another trip to Privacy & Security.
  # Remove this block once releases are signed with a stable identity.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Write Less.app"]
  end

  uninstall quit: "dev.romus.writeless"

  zap trash: [
    "~/Library/Application Support/Writeless",
    "~/Library/Caches/dev.romus.writeless",
    "~/Library/HTTPStorages/dev.romus.writeless",
    "~/Library/Preferences/dev.romus.writeless.plist",
  ]

  caveats <<~CAVEATS
    Write Less needs Microphone access on first launch, to record.

    Each transcript goes to the clipboard — press ⌘V to paste it.

    It downloads its speech model (about 630 MB) on first launch.
  CAVEATS
end
