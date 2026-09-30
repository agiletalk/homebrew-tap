cask "commandcenter" do
  version "0.2.0"
  sha256 "4d13b6b928f5617a47baa884501c657076a244084188f2497cedd5ce9208b764"

  url "https://github.com/agiletalk/homebrew-tap/releases/download/commandcenter-v#{version}/CommandCenter-#{version}.dmg"
  name "CommandCenter"
  desc "Docked panel showing running Claude Code and Codex agents as worker units"
  homepage "https://github.com/agiletalk/homebrew-tap"

  depends_on macos: :sonoma

  app "CommandCenter.app"

  # The app is ad-hoc signed (not notarized), so clear the download quarantine flag
  # on install to avoid Gatekeeper's "damaged / can't be opened" block.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/CommandCenter.app"],
        writable_paths: ["CommandCenter.app"],
        writable_base:  :appdir
  end

  uninstall quit: "com.agiletalk.CommandCenter"

  zap trash: [
    "~/Library/Application Support/CommandCenter",
    "~/Library/Preferences/com.agiletalk.CommandCenter.plist",
  ]

  caveats <<~EOS
    CommandCenter lives in the menu bar and on the edge of the screen. Open it with:
      open -a CommandCenter
    On first launch, allow notifications. Terminal/iTerm2 users are asked once
    for Automation permission the first time they jump to a tab.
  EOS
end
