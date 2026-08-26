cask "tappie" do
  version "1.9.1"
  sha256 "dea15860c6f32dfab799badfaca8efb676fad520ab0fef23f994faa28a017592"

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
