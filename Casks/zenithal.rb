cask "zenithal" do
  version "2.3.0"
  sha256 "4125023d63e6b53aa276509996439ff3be8c926e7488b6c9303ea384d93c29d1"

  url "https://www.empiricapps.com/api/download/zenithal?version=#{version}"
  name "Zenithal"
  desc "Native macOS app for managing Docker, Compose, and Kubernetes"
  homepage "https://www.empiricapps.com/zenithal"

  depends_on macos: :ventura
  depends_on formula: "lima"

  app "Zenithal.app"

  zap trash: [
    "~/Library/Caches/mbu.Zenithal",
    "~/Library/Preferences/mbu.Zenithal.plist",
    "~/Library/Saved Application State/mbu.Zenithal.savedState",
  ]
end
