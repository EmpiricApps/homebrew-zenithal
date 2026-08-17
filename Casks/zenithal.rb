cask "zenithal" do
  version "2.2.0"
  sha256 "66559fce225ed7e7e10ee10581ac38f8a7ba9b8cc37e34d12f6b5b019a6272d1"

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
