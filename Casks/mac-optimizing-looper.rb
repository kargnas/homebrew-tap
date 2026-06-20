cask "mac-optimizing-looper" do
  version "0.1.1"
  sha256 "637482332287c76619fec27fe5ab9a8489a8337f488e933eaced5da4778291ac"

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
