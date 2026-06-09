cask "tappie" do
  version "1.1.0"
  sha256 "98e84376267f4188c6bcaf06a61266b0edb53c0ce711c4c266e6f53100d26183"

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
