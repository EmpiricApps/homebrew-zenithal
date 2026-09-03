cask "zenithal" do
  version "2.2.1"
  sha256 "45d72306d85720a0e4d3609502689df53c9529cb437b216eb322d5b23fd8f69a"

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
