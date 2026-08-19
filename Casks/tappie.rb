cask "tappie" do
  version "1.8.0"
  sha256 "fa374fae1bae122b6e4096f12393ae2cc268f3ff1634d2a583a198b01dd0351d"

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
