cask "bytelab" do
  version "1.1.0"
  sha256 "d5c9d91a002873d44d568f9300aafe9ba54d4176da44ceaee2e331c51c83b291"

  url "https://github.com/ByteLabs-Studio/ByteLab/releases/download/v#{version}/bytelab-#{version}-arm64.dmg",
      verified: "github.com/ByteLabs-Studio/ByteLab/"
  name "ByteLab"
  desc "Bytebeat Studio"
  homepage "https://github.com/ByteLabs-Studio/ByteLab"

  app "bytelab.app"

  zap trash: [
    "~/Library/Preferences/com.bytelabs.bytelab.plist",
    "~/Library/Application Support/ByteLab",
    "~/Library/Saved Application State/com.bytelabs.bytelab.savedState",
  ]

  livecheck do
    url :url
    strategy :github_latest
  end
end