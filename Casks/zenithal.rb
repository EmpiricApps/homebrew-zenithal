cask "zenithal" do
  version "2.0.1"
  sha256 "8562f1e9549b67a3a8ff59519fcf3526c8a5bca4fbdffcede127a36286764e7f"

  url "https://www.empiricapps.com/api/download/zenithal?version=#{version}"
  name "Zenithal"
  desc "Native macOS app for managing Docker, Compose, and Kubernetes"
  homepage "https://www.empiricapps.com/zenithal"

  depends_on macos: ">= :ventura"
  depends_on formula: "lima"

  app "Zenithal.app"

  zap trash: [
    "~/Library/Caches/mbu.Zenithal",
    "~/Library/Preferences/mbu.Zenithal.plist",
    "~/Library/Saved Application State/mbu.Zenithal.savedState",
  ]
end
