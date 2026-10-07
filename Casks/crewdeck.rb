cask "crewdeck" do
  version "0.8.1"
  sha256 "4d7835e8507936e5997eb4db89104e3305c0c5eb24a35bc303dd996726025665"

  url "https://github.com/agiletalk/homebrew-tap/releases/download/crewdeck-v#{version}/Crewdeck-#{version}.dmg"
  name "Crewdeck"
  desc "Docked panel showing running Claude Code and Codex agents as worker units"
  homepage "https://github.com/agiletalk/homebrew-tap"

  depends_on macos: :sonoma

  app "Crewdeck.app"

  # The app is ad-hoc signed (not notarized), so clear the download quarantine flag
  # on install to avoid Gatekeeper's "damaged / can't be opened" block.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Crewdeck.app"],
        writable_paths: ["Crewdeck.app"],
        writable_base:  :appdir
  end

  uninstall quit: "com.agiletalk.Crewdeck"

  zap trash: [
    "~/Library/Application Support/Crewdeck",
    "~/Library/Preferences/com.agiletalk.Crewdeck.plist",
  ]

  caveats <<~EOS
    Crewdeck lives in the menu bar and on the edge of the screen. Open it with:
      open -a Crewdeck
    On first launch, allow notifications. Terminal/iTerm2 users are asked once
    for Automation permission the first time they jump to a tab.
  EOS
end
