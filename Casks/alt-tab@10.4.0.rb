cask "alt-tab@10.4.0" do
  version "10.4.0"
  sha256 "09b7908b9d046c63fe1a85cb37f33c88b27ae5123a6b05e30e83f3101f0f6f7f"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip",
      verified: "github.com/lwouis/alt-tab-macos/"
  name "AltTab"
  desc "Enable Windows-like alt-tab"
  homepage "https://alt-tab.app/"

  livecheck do
    skip "Pinned version"
  end

  auto_updates true
  depends_on :macos

  app "AltTab.app"

  uninstall quit:       "com.lwouis.alt-tab-macos",
            on_upgrade: :quit

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos",
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
