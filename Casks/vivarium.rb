cask "vivarium" do
  version "0.2.0"
  sha256 "a465bff4b320e13ffea6a5ab65852195be9e8b9a84dee0b1b950051b7956be22"

  url "https://github.com/agiletalk/Vivarium/releases/download/v#{version}/Vivarium.zip"
  name "Vivarium"
  desc "Menu bar aquarium visualizing running AI coding agents"
  homepage "https://github.com/agiletalk/Vivarium"

  depends_on macos: :sonoma

  app "Vivarium.app"

  # The app is ad-hoc signed (not notarized), so clear the download quarantine flag on install
  # to avoid Gatekeeper's "damaged and can't be opened" block.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Vivarium.app"]
  end

  zap trash: "~/Library/Application Support/Vivarium"
end
