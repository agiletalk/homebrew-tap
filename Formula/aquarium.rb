class Aquarium < Formula
  desc "Healing ASCII aquarium in your terminal"
  homepage "https://github.com/agiletalk/Aquarium"
  url "https://github.com/agiletalk/Aquarium/releases/download/v1.6.0/aquarium.tar.gz"
  sha256 "3a006131b2ed31d6bf469b0a6161c2d06d309fcece403f6f5bc105d29c2694fa"
  version "1.6.0"

  depends_on :macos

  def install
    bin.install "aquarium"
  end

  test do
    assert_predicate bin/"aquarium", :executable?
  end
end
