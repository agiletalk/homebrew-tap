class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.4.0/aquarium.tar.gz"
  sha256 "1e58bdcd9c9573a7d72463116c6c5b49a391ea487938479f2e4148d64638d752"
  version "1.4.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
