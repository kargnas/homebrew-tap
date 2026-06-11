cask "cctrans" do
  version "0.2.8"
  sha256 "0a07e9ab0abd35b939c58a7579da1b46b179f3856bd7ac5b6e62b4183de5838d"

  url "https://github.com/kargnas/cctrans/releases/download/v#{version}/CCTrans-v#{version}.dmg"
  name "CCTrans"
  desc "Menu-bar translator that translates the clipboard on double Cmd+C"
  homepage "https://github.com/kargnas/cctrans"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships Sparkle and updates itself; brew upgrade is optional.
  auto_updates true
  depends_on macos: :sequoia

  app "CCTrans.app"

  zap trash: [
    "~/.config/cctrans",
    "~/Library/Application Support/as.kargn.cctrans",
    "~/Library/Caches/as.kargn.cctrans",
    "~/Library/HTTPStorages/as.kargn.cctrans",
    "~/Library/Preferences/as.kargn.cctrans.plist",
    "~/Library/WebKit/as.kargn.cctrans",
  ]
end
