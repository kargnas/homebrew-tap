cask "mac-optimizing-looper" do
  version "0.1.10"
  sha256 "99aa3dd0d612f72138c3c128aee4566008994fd1d76b3f7f539499a6bef54b47"

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
