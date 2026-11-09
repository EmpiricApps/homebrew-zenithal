cask "zenithal" do
  version "2.3.1"
  sha256 "c295d2abf44bd7a88cb62f6ed02d38d1524ab0bd53af10fdfa27d92033e8c5ae"

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
