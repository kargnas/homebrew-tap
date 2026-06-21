cask "mac-optimizing-looper" do
  version "0.1.3"
  sha256 "e076e364928dddb88798f058eae7b69f930065c972e33b07c273d34c1852c53e"

  url "https://github.com/kargnas/mac-optimizing-looper/releases/download/v#{version}/MacOptimizingLooper-v#{version}.dmg"
  name "Mac Optimizing Looper"
  desc "Menu-bar agent loop that asks Claude what's overloading your Mac"
  homepage "https://github.com/kargnas/mac-optimizing-looper"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MacOptimizingLooper.app"

  zap trash: [
    "~/.config/mac-optimizing-looper",
    "~/Library/Caches/as.kargn.MacOptimizingLooper",
    "~/Library/HTTPStorages/as.kargn.MacOptimizingLooper",
    "~/Library/Preferences/as.kargn.MacOptimizingLooper.plist",
  ]
end
