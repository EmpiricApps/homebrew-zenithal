cask "tappie" do
  version "1.2.0"
  sha256 "373b6e267147b70501269c51214075dc426e6e881f26a5cb0263df7194f5b2e6"

  url "https://www.empiricapps.com/api/download/tappie?version=#{version}"
  name "Tappie"
  desc "Native macOS GUI for managing Homebrew packages without the command line"
  homepage "https://www.empiricapps.com/tappie"

  depends_on macos: ">= :sonoma"

  app "Tappie.app"

  zap trash: [
    "~/Library/Caches/mbu.Tappie",
    "~/Library/Preferences/mbu.Tappie.plist",
    "~/Library/Saved Application State/mbu.Tappie.savedState",
  ]
end
