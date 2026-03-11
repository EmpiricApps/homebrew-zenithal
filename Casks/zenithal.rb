cask "zenithal" do
  version "1.0.6"
  sha256 "5ec1bf44c8c15c6717bb2d299ecbe9365180eec01369952dcfe0cef761c33d95"

  url "https://www.empiricapps.com/api/download/zenithal"
  name "Zenithal"
  desc "Native macOS app for managing Docker, Compose, and Kubernetes"
  homepage "https://www.empiricapps.com/zenithal"

  depends_on macos: ">= :ventura"

  app "Zenithal.app"

  zap trash: [
    "~/Library/Caches/mbu.Zenithal",
    "~/Library/Preferences/mbu.Zenithal.plist",
    "~/Library/Saved Application State/mbu.Zenithal.savedState",
  ]
end
