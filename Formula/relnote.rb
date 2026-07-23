class Relnote < Formula
  desc "Release notes, curated for humans — via your Claude Code subscription"
  homepage "https://github.com/agiletalk/relnote"
  url "https://github.com/agiletalk/relnote/releases/download/v0.1.0/relnote.tar.gz"
  sha256 "392696d48cae7ed38067261ae2c6110d7edcadb1e386326268b6485d5b3c223f"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "relnote"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/relnote --version")
  end
end
