class Relnote < Formula
  desc "Release notes, curated for humans — via your Claude Code subscription"
  homepage "https://github.com/agiletalk/relnote"
  url "https://github.com/agiletalk/relnote/releases/download/v0.2.0/relnote.tar.gz"
  sha256 "bf44e8b8a5b1d5adb1e2201126510e76df122ad21138b1197370e523e4df4f1c"
  version "0.2.0"

  depends_on :macos

  def install
    bin.install "relnote"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/relnote --version")
  end
end
