cask "cctrans" do
  version "0.2.26"
  sha256 "2d8eb913265fa438a88f2bcd0d989d2959c46baff02e821a19b50a2e27e4be01"

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
