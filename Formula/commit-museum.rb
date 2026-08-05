class CommitMuseum < Formula
  desc "Your git history, exhibited — a terminal museum for git log"
  homepage "https://github.com/agiletalk/commit-museum"
  url "https://github.com/agiletalk/commit-museum/releases/download/v0.1.0/commit-museum.tar.gz"
  sha256 "b05e2506b1987eb1be4323e5e581be9ca396ef073e2e6807023cea03df7f0dd7"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "commit-museum"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/commit-museum --version")
  end
end
