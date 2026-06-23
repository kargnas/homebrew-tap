cask "mac-optimizing-looper" do
  version "0.1.7"
  sha256 "0a44f0b8e5cde3b79cefae3d43422a0af9a8c470aeabeacc77c6c6a5b204d30f"

  url "https://github.com/kargnas/mac-optimizing-looper/releases/download/v#{version}/MacOptimizingLooper-v#{version}.dmg"
  name "Mac Optimizing Looper"
  desc "Menu-bar agent loop that asks Claude what's overloading your Mac"
  homepage "https://github.com/kargnas/mac-optimizing-looper"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MacOptimizingLooper.app"

  zap trash: [
    "~/.config/mac-optimizing-looper",
    "~/Library/Caches/as.kargn.MacOptimizingLooper",
    "~/Library/HTTPStorages/as.kargn.MacOptimizingLooper",
    "~/Library/Preferences/as.kargn.MacOptimizingLooper.plist",
  ]
end
