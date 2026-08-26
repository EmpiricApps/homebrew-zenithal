cask "tappie" do
  version "1.9.2"
  sha256 "01baa7fd9805ddea6a1263f85c49df0610ed0d661b6f8795f81abe7c29225d26"

  url "https://www.empiricapps.com/api/download/tappie?version=#{version}"
  name "Tappie"
  desc "Native macOS GUI for managing Homebrew packages without the command line"
  homepage "https://www.empiricapps.com/tappie"

  depends_on macos: :sonoma

  app "Tappie.app"

  zap trash: [
    "~/Library/Caches/mbu.Tappie",
    "~/Library/Preferences/mbu.Tappie.plist",
    "~/Library/Saved Application State/mbu.Tappie.savedState",
  ]
end
