cask "tappie" do
  version "1.0.1"
  sha256 "29ee642eff052222afa4b05bcd3fd35bec49730aba6ca5a4f920832f674d0373"

  url "https://www.empiricapps.com/api/download/tappie"
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
