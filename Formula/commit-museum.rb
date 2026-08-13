class CommitMuseum < Formula
  desc "Your git history, exhibited — a terminal museum for git log"
  homepage "https://github.com/agiletalk/commit-museum"
  url "https://github.com/agiletalk/commit-museum/releases/download/v0.3.0/commit-museum.tar.gz"
  sha256 "3786c7e1900b5b9704c9848fdd0786b60e556af99dac69eb86d21b5649557211"
  version "0.3.0"

  depends_on :macos

  def install
    bin.install "commit-museum"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/commit-museum --version")
  end
end
