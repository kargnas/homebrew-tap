cask "mac-optimizing-looper" do
  version "0.1.8"
  sha256 "b4e9820476ba1e2844c7cfadd0e1d0b9790a31531d69c23d2651b9a5bfd335aa"

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
