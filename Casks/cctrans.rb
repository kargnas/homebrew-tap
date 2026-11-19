cask "cctrans" do
  version "1.0.4"
  sha256 "e829260d9498f74a9216e32657f2bd99e2fdc8a4d58d4d0cdbc1742fc5e22742"

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
